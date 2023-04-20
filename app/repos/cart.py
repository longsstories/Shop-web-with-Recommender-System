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
    cart_items=db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id)
    del_item=cart_items.filter(tables.CartItems.product_id==item_id).first()
    if del_item:
        db.delete(del_item)
        db.commit()
    else:
        raise HTTPException(status_code=status.HTTP_422_UNPROCESSABLE_ENTITY,
                        detail=f"Item doesn't exist")
    return user.cart

def update_quantity(request, db: Session,user):
    db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id).filter(tables.CartItems.product_id==request.product_id).update({tables.CartItems.product_quantity:request.buy_count})
    db.commit()
    return user.cart

def buy_item(db: Session,user):
    items=db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id).all()
    for item in items:
        prd_id=item.product_id
        #update quantity,sold
        db.query(tables.product).filter(tables.product.id==prd_id).update({tables.product.quantity:tables.product.quantity-item.product_quantity})
        db.query(tables.product).filter(tables.product.id==prd_id).update({tables.product.sold:tables.product.sold+item.product_quantity})
        # delele from cart
        db.delete(item)
        db.commit()
    return user.cart