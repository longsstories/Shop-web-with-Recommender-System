from .database import Base
from sqlalchemy import Column,Integer,String
from sqlalchemy.orm import relationship

class product(Base):
    __tablename__='hanghoa'
    id = Column(Integer,primary_key=True,index=True)
    cat=Column(String) #category
    name=Column(String)
    price=Column(Integer)
    imgurl=Column(String)
    danhmuc=Column(String)
    name_unaccented=Column(String)
    sold=Column(Integer)
    quantity=Column(Integer)

class User(Base):
    __tablename__='users'
    id = Column(Integer,primary_key=True,index=True)
    name=Column(String)
    phone=Column(String)
    address=Column(String)
    gender=Column(String)
    email=Column(String)
    password=Column(String)

# class Cart(Base):
#     __tablename__='cart'
#     pass