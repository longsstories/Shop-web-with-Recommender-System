from fastapi import APIRouter,Depends,File,UploadFile
from typing import List
from .. import schemas,database,oauth2
from sqlalchemy.orm import Session
from ..repos import user
import uuid

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

@router.get('/orders')
def get_order(current_user: schemas.User = Depends(oauth2.get_current_user)):
    return user.get_order(current_user)

# @router.post('/upload-avatar')
# def upload_avatar(file:UploadFile=File(...),current_user: schemas.User = Depends(oauth2.get_current_user)):
#     return user.upload_avt(file)