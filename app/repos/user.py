from sqlalchemy.orm import Session
from .. import tables
from fastapi import HTTPException,status


#tao thong tin khach hang
def create_info_user():
    return

def get_user(id_user,db:Session):
    user=db.query(tables.User).filter(tables.User.id==id_user).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'User with the id {id_user} is not available')
    return user