
from fastapi import APIRouter,Depends,status,Query
from typing import List
from .. import schemas,database,oauth2
from sqlalchemy.orm import Session
from ..repos import cart

router=APIRouter(
    tags=["cart"]
)

get_db=database.get_db

@router.post("/cart/add", status_code=status.HTTP_200_OK)
def add_to_cart(request:schemas.AddToCart,db: Session =Depends(get_db),user: schemas.User = Depends(oauth2.get_current_user)):
    return cart.add_to_cart(request,db,user)

@router.get('/cart/list', response_model=schemas.Carts)
def carts(user: schemas.User = Depends(oauth2.get_current_user)):
    return cart.show_item(user)

@router.delete("/clear")
def clear_item(item_id,db: Session =Depends(get_db),user: schemas.User = Depends(oauth2.get_current_user)):
    return cart.clear_item(item_id,db,user)