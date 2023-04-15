from fastapi import APIRouter,Depends
from typing import List
from .. import schemas,database,oauth2
from sqlalchemy.orm import Session
from ..repos import user
router=APIRouter(
    tags=["user"],
)

get_db=database.get_db


#thong tin khach hang theo id
@router.get('/{id}',response_model=schemas.ShowUser)
def get_user(id_user:int,db: Session =Depends(get_db)):
    return user.get_user(id_user,db)