from pydantic import BaseModel


class ShowProduct(BaseModel):
    name:str
    price:str
    imgurl:str
    class Config():
        orm_mode=True

class User(BaseModel):
    name:str
    email:str
    password:str

class ShowUser(BaseModel):
    name:str
    email:str
    class Config():
        orm_mode=True

class Login(BaseModel):
    username:str
    password:str