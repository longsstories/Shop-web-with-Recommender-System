from fastapi import APIRouter,Depends,status,Query
from typing import List
from .. import schemas,database,oauth2
from sqlalchemy.orm import Session
from ..repos import product
from fastapi_pagination import Page,add_pagination,paginate
from pydantic import Field
router=APIRouter(
    tags=["product"]
)

get_db=database.get_db

Page = Page.with_custom_options(
    size=Field(32, ge=1, le=500),
)

@router.get("/trangchu",response_model=Page[schemas.ShowProduct],status_code=status.HTTP_200_OK)
def trangchu(db: Session =Depends(get_db)):
    return paginate(product.get_all(db))
#lay danh muc
@router.get("/categories",status_code=status.HTTP_200_OK)
def categories():
    return {"message":"get categories successfully",
            "categories":[
                {"id":1,
                "name":"Đồ điện tử"},
                {"id":2,
                 "name":"Đồ gia dụng"},
                {"id":3,
                 "name":"Áo quần"}
            ]}

#thong tin san pham theo danh muc
@router.get("/categories/{dm}",status_code=status.HTTP_200_OK,response_model=Page[schemas.ShowProduct])
def cat(dm,db: Session =Depends(get_db)):
    return paginate(product.get_cat(dm,db))

#thong tin san pham theo id
@router.get("/product",status_code=status.HTTP_200_OK,response_model=schemas.ShowProduct)
def show(id:int,db: Session =Depends(get_db)):
    prd=product.get_product(id,db)
    name=prd.name
    return prd

#tim san pham theo ten
@router.get("/search",response_model=Page[schemas.ShowProduct],status_code=status.HTTP_200_OK)
def search(keyword:str=Query(None,min_length=2,max_length=20),
           minprice:int|None =Query(None,gt=0),
           maxprice:int|None =Query(None,gt=0),
           sortby:str|None =Query(None,enum=["price","sales"]),
           order:str|None =Query("acs",enum=["acs","decs"]),
           cat:str=Query(None,enum=["dientu","giadung","aoquan"]),
           db: Session =Depends(get_db)):
    return paginate(product.get_search(keyword,minprice,maxprice,sortby,order,cat,db))
   

#chua xong
# @router.get("/product/{item_id}",status_code=status.HTTP_200_OK)
# async def read_item(item_id: int):
#     return product.recommender(item_id)

add_pagination(router)