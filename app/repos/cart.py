from sqlalchemy.orm import Session
from .. import tables
from fastapi import HTTPException,status
from . import product


def add_to_cart(request, db: Session,user):
    check_item=db.query(tables.CartItems).filter(tables.CartItems.product_id==request.product_id).first()
    if check_item:
        raise HTTPException(status_code=status.HTTP_422_UNPROCESSABLE_ENTITY,
                        detail=f'Item already exists')
    new_item=tables.CartItems(product_id=request.product_id,product_quantity=request.buy_count,user_id=user.id)
    db.add(new_item)
    db.commit()
    db.refresh(new_item)
    return new_item

def show_item(user):
    total = 0
    items=user.cart
    items_list=[]
    for item in items:
        price=item.prd_inf.price
        product_name=item.prd_inf.name
        product_image=item.prd_inf.imgurl   
        product_quantity=item.product_quantity
        product_price=price*product_quantity
        total += product_price
        item_dict={
            "product_name" : product_name,
            "product_image" : product_image,
            "product_quantity" : product_quantity,
            "product_price" : product_price,
            "price": price
        }
        items_list.append(item_dict)
    return {'total': total, 'items': items_list}
  
def clear_item(item_id,db: Session,user):
    item=db.query(tables.CartItems).filter(tables.CartItems.product_id==item_id).first()
    db.query(tables.CartItems).delete(item)
    return user.cart