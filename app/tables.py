from .database import Base
from sqlalchemy import Column,Integer,String,TIMESTAMP,ForeignKey,text
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func

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
    order=relationship("OrderDetail", back_populates="prd_inf")

class User(Base):
    __tablename__='accounts'
    id = Column(Integer,primary_key=True,index=True)
    email=Column(String)
    password=Column(String)
    cart = relationship("CartItems", back_populates="user_inf")
    order = relationship("Order", back_populates="user")
    profile = relationship("UserProfile", back_populates="user")

class CartItems(Base):
    __tablename__ = 'cart_items'
    id = Column(Integer, nullable=False, primary_key=True, index=True)
    product_id = Column(Integer,ForeignKey("hanghoa.id"))
    product_quantity = Column(Integer)
    created_at = Column(TIMESTAMP(timezone=True),nullable=False, server_default=func.now())
    user_id = Column(Integer,ForeignKey("accounts.id"))
    user_inf = relationship("User", back_populates="cart")
    prd_inf = relationship("product", back_populates="cart")

class Order(Base):
    __tablename__ = 'orders'
    id = Column(Integer, nullable=False, primary_key=True, index=True)
    user_id=Column(Integer,ForeignKey("accounts.id"))
    created_at = Column(TIMESTAMP(timezone=True),nullable=False, server_default=func.now())
    user = relationship("User",back_populates="order")
    order_detail = relationship("OrderDetail",back_populates="order")
    
class OrderDetail(Base):
    __tablename__ = 'oder_detail'
    id = Column(Integer, nullable=False, primary_key=True, index=True)
    order_id= Column(Integer,ForeignKey("orders.id"))
    product_id=Column(Integer,ForeignKey("hanghoa.id"))
    quantity=Column(Integer)
    price=Column(Integer)
    order= relationship("Order", back_populates="order_detail")
    prd_inf = relationship("product", back_populates="order")

class UserProfile(Base):
    __tablename__ = 'user_profile'
    id = Column(Integer, nullable=False, primary_key=True, index=True)
    name=Column(String)
    phone=Column(String)
    address=Column(String)
    gender=Column(String)
    birthday=Column(String)
    email=Column(String)
    user_id=Column(Integer,ForeignKey("accounts.id"))
    user = relationship("User",back_populates="profile")

class History(Base):
    __tablename__='history'
    id = Column(Integer, nullable=False, primary_key=True, index=True)
    userId=Column(Integer)
    productId=Column(String)
    trained=Column(Integer)