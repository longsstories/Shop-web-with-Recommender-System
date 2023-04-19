from .database import Base
from sqlalchemy import Column,Integer,String,TIMESTAMP,ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func

class CartItems(Base):
    __tablename__ = 'cart_items'
    id = Column(Integer, nullable=False, primary_key=True, index=True)
    product_id = Column(Integer,ForeignKey("hanghoa.id"))
    product_quantity = Column(Integer)
    created_at = Column(TIMESTAMP(timezone=True),nullable=False, server_default=func.now())
    updated_at = Column(TIMESTAMP(timezone=True),nullable=False, server_default=func.now())
    user_id = Column(Integer,ForeignKey("users.id"))
    user_inf = relationship("User", back_populates="cart")
    prd_inf = relationship("product", back_populates="cart")

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
    old_price=Column(Integer)
    cart = relationship("CartItems", back_populates="prd_inf")

class User(Base):
    __tablename__='users'
    id = Column(Integer,primary_key=True,index=True)
    name=Column(String)
    phone=Column(String)
    address=Column(String)
    gender=Column(String)
    email=Column(String)
    password=Column(String)
    cart = relationship("CartItems", back_populates="user_inf")


