from sqlalchemy.orm import Session
from .. import tables,schemas
from fastapi import HTTPException,status
from ..hashing import Hash


def create_user(request:schemas.User,db:Session):
    new_email=request.email
    checkEmail=db.query(tables.User).filter(tables.User.email==new_email).first()
    if not checkEmail:
        new_user=tables.User(name=request.name,email=request.email,password=Hash.bcrypt(request.password))
        db.add(new_user)
        db.commit()
        db.refresh(new_user)
    else:
        raise HTTPException(status_code=status.HTTP_422_UNPROCESSABLE_ENTITY,
                            detail=f'User with email {new_email} already exists')
    return new_user

def get_user(id_user,db:Session):
    user=db.query(tables.User).filter(tables.User.id==id_user).first()
    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'User with the id {id_user} is not available')
    return user