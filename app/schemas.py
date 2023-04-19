from pydantic import BaseModel
from typing import Optional,List
from datetime import datetime

class ShowProduct(BaseModel):
    name:str
    price:str
    imgurl:str
    quantity:str
    sold:str
    old_price:str
    id:int
    class Config():
        orm_mode=True


class User(BaseModel):
    email:str
    password:str

class ShowUser(BaseModel):
    name:str|None
    phone:str|None
    address:str|None
    gender:str|None
    email:str
    class Config():
        orm_mode=True

class Login(BaseModel):
    username:str
    password:str
    

class Token(BaseModel):
    access_token:str
    token_type:str

class TokenData(BaseModel):
    email:Optional[str]=None

class AddToCart(BaseModel):
    product_id: int
    buy_count: int


class CartItems(BaseModel):
    product_name: str
    product_image: str
    product_price: float
    product_quantity: int
    price: int

class Carts(BaseModel):
    total: float
    items: List[CartItems] = []

    class Config:
        orm_mode = True