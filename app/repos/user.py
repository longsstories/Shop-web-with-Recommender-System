from sqlalchemy.orm import Session
from .. import tables
from fastapi import HTTPException,status


#tao thong tin khach hang
def create_info_user(request, db: Session,user):
    profile={}
    table=tables.UserProfile
    check_user=db.query(table).filter(table.user_id==user.id).first()
    if check_user:
        db.query(table).filter(table.user_id==user.id).update({table.name:request.name,
                                                               table.phone:request.phone,
                                                               table.address:request.address,
                                                               table.gender:request.gender,
                                                               table.birthday:request.birthday})
        db.commit()
    else:
        profile=table(name=request.name,
                                phone=request.phone,
                                address=request.address,
                                gender=request.gender,
                                birthday=request.birthday,
                                email=user.email,
                                user_id=user.id)
        db.add(profile)
        db.commit()
        db.refresh(profile)
    return user.profile

def get_user(user):
    return user.profile