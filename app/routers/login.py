from fastapi import APIRouter,Depends,HTTPException,status
from ..import schemas,database,tables,token
from sqlalchemy.orm import Session
from ..hashing import Hash

router=APIRouter(
    tags=['login']
)
#tao user khach hang
@router.post('/register')
def register(request:schemas.Login,db:Session=Depends(database.get_db)):
    new_email=request.username
    checkEmail=db.query(tables.User).filter(tables.User.email==new_email).first()
    if not checkEmail:
        new_user=tables.User(email=request.username,password=Hash.bcrypt(request.password))
        db.add(new_user)
        db.commit()
        db.refresh(new_user)
    else:
        raise HTTPException(status_code=status.HTTP_422_UNPROCESSABLE_ENTITY,
                            detail=f'User with email {new_email} already exists')
    access_token = token.create_access_token(data={"sub": new_user.email})
    return { "message":"Register successfully",
            "data":{
                "access_token": access_token,
                "token_type": "bearer",
                "user":new_user
            }
            }

@router.post('/login')
def login(request:schemas.Login,db:Session=Depends(database.get_db)):
    user=db.query(tables.User).filter(tables.User.email==request.username).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Invalid Credentials')
    if not Hash.verify(user.password,request.password):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Incorrect password')
    access_token = token.create_access_token(data={"sub": user.email}) 
    return { "message":"Login successfully",
            "data":{
                "access_token": access_token,
                "token_type": "bearer",
                "user":user
            }
            }
