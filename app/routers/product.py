from fastapi import APIRouter,Depends,status,Query
from typing import List
from .. import schemas,database
from sqlalchemy.orm import Session
from ..repos import product
from fastapi_pagination import Page,add_pagination,paginate

router=APIRouter(
    tags=["product"]
)

get_db=database.get_db

@router.get("/trangchu",response_model=Page[schemas.ShowProduct],status_code=status.HTTP_200_OK)
def trangchu(db: Session =Depends(get_db)):
    return paginate(product.get_all(db))

#thong tin san pham theo danh muc
@router.get("/{dm}",status_code=status.HTTP_200_OK,response_model=Page[schemas.ShowProduct])
def danhmuc(dm,db: Session =Depends(get_db)):
    return paginate(product.get_danhmuc(dm,db))

#thong tin san pham theo id
@router.get("/product/{id_prd}",status_code=status.HTTP_200_OK,response_model=schemas.ShowProduct)
def show(id_prd,db: Session =Depends(get_db)):
    prd=product.get_product(id_prd,db)
    return prd

#tim san pham theo ten
@router.get("/search/",response_model=Page[schemas.ShowProduct],status_code=status.HTTP_200_OK)
def search(name:str=Query(min_length=2,max_length=20),db: Session =Depends(get_db)):
    return paginate(product.get_search(name,db))
    

#chua xong
@router.get("/product/{item_id}",status_code=status.HTTP_200_OK)
async def read_item(item_id: int):
    return product.recommender(item_id)

add_pagination(router)

print("alo")