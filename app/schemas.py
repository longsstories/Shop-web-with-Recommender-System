from pydantic import BaseModel


class ShowProduct(BaseModel):
    name:str
    price:str
    imgurl:str
    id:int
    class Config():
        orm_mode=True

class User(BaseModel):
    email:str
    password:str
    class Config():
        orm_mode=True

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
    class Config():
        orm_mode=True