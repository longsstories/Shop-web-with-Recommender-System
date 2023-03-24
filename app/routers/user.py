from fastapi import APIRouter,Depends,status,HTTPException
from typing import List
from .. import schemas,database,tables
from sqlalchemy.orm import Session
from ..repos import user
router=APIRouter(
    tags=["user"],
    prefix="/user"
)

get_db=database.get_db

#tao user khach hang
@router.post('/',response_model=schemas.ShowUser)
def create_user(request:schemas.User,db: Session =Depends(get_db)):
    return user.create_user(request,db)

#thong tin khach hang theo id
@router.get('/{id}',response_model=schemas.ShowUser)
def get_user(id_user:int,db: Session =Depends(get_db)):
    return user.get_user(id_user,db)