from fastapi import APIRouter,Depends,HTTPException,status
from ..import schemas,database,tables
from sqlalchemy.orm import Session
from ..hashing import Hash

router=APIRouter(
    tags=['login']
)

@router.post('/login')
def login(request:schemas.Login,db:Session=Depends(database.get_db)):
    user=db.query(tables.User).filter(tables.User.email==request.username).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Invalid Credentials')
    if not Hash.verify(user.password,request.password):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Incorrect password')
    return user