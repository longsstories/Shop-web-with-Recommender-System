from pydantic import BaseModel
from typing import Optional

class ShowProduct(BaseModel):
    name:str
    price:str
    imgurl:str
    quantity:str
    sold:str
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