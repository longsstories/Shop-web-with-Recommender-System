from sqlalchemy.orm import Session
from .. import tables
from fastapi import HTTPException,status
from typing import List
import uuid

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

def get_order(user):
    orders=user.order
    for order in orders:
        for item in order.order_detail:
            item.prd_inf.name
    return orders    

# IMAGEDIR="images/"
# def upload_avt(file):
#     file.filename=f"{uuid.uuid4()}.jpg"
#     contents= file.read()
#     with open("{IMAGEDIR}{file.filename}","wb") as f:
#         f.write(contents)
#     return {"filename":file.filename}
