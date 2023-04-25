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
@router.get('/profile')
def get_profile(current_user: schemas.User = Depends(oauth2.get_current_user)):
    return user.get_user(current_user)

@router.patch('/update')
def add_profile(request:schemas.AddProfile,db: Session =Depends(get_db),current_user: schemas.User = Depends(oauth2.get_current_user)):
    return user.create_info_user(request,db,current_user)