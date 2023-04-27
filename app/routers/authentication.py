from fastapi import APIRouter,Depends,HTTPException,status
from ..import schemas,database,tables,token,oauth2
from sqlalchemy.orm import Session
from ..hashing import Hash
from fastapi.security import OAuth2PasswordRequestForm
router=APIRouter(
    tags=['authentication']
)

#tao user khach hang
@router.post('/register')
def register(request:OAuth2PasswordRequestForm = Depends(),db:Session=Depends(database.get_db)):
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
    return {"access_token": access_token, "token_type":"bearer"}

@router.post('/login')
def login(request:OAuth2PasswordRequestForm = Depends() ,db:Session=Depends(database.get_db)):
    user=db.query(tables.User).filter(tables.User.email==request.username).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Invalid Credentials')
    if not Hash.verify(user.password,request.password):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Incorrect password')
    access_token = token.create_access_token(data={"sub": user.email}) 
    return {"access_token": access_token, "token_type":"bearer"}

@router.post('/logout')
def logout():
    return

@router.patch("/change-password")
def change_password(request:schemas.ChangePassword,db:Session=Depends(database.get_db),current_user: schemas.User = Depends(oauth2.get_current_user)):
    #verify current password
    if not Hash.verify(current_user.password,request.current_pw):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Current password is not match')
    #confirm new password
    if request.new_pw==request.current_pw:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
                            detail=f'New password cannot match current password')
    elif request.new_pw!=request.confirm_pw:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
                            detail=f'New password is not match')
    else:
    #change password
        db.query(tables.User).filter(tables.User.email==current_user.email).update({tables.User.password:Hash.bcrypt(request.new_pw)})
        db.commit()
    return {"message":"Change password successfully"}

@router.get("/me")
async def read_users_me(current_user: schemas.User = Depends(oauth2.get_current_user)):
    return current_user