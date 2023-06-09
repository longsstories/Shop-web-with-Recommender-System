from sqlalchemy.orm import Session,load_only
from .. import tables
from fastapi import HTTPException,status

def add_to_cart(request, db: Session,user):
    cart_items=db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id)
    check_item=cart_items.filter(tables.CartItems.product_id==request.product_id).first()
    if check_item:
        db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id).filter(tables.CartItems.product_id==request.product_id).update({tables.CartItems.product_quantity:tables.CartItems.product_quantity+request.buy_count})
        db.commit()
    else:
        new_item=tables.CartItems(product_id=request.product_id,product_quantity=request.buy_count,user_id=user.id)
        db.add(new_item)
        db.commit()
        db.refresh(new_item)
    return user.cart

def show_item(user):
    total = 0
    items=user.cart
    items_list=[]
    for item in items:
        prd_id=item.product_id
        price=item.prd_inf.price
        product_name=item.prd_inf.name
        product_image=item.prd_inf.imgurl   
        product_quantity=item.product_quantity
        product_price=price*product_quantity
        old_price=item.prd_inf.old_price
        quantity=item.prd_inf.quantity
        total += product_price
        item_dict={
            "product_id":prd_id,
            "product_name" : product_name,
            "product_image" : product_image,
            "product_quantity" : product_quantity,
            "product_price" : product_price,
            "old_price":old_price,
            "quantity":quantity,
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
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                        detail=f"Sản phẩm không tồn tại")
    return user.cart

def update_quantity(request, db: Session,user):
    db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id).filter(tables.CartItems.product_id==request.product_id).update({tables.CartItems.product_quantity:request.buy_count})
    db.commit()
    return user.cart

def buy_item(ids,db: Session,user):
    email=user.email
    name=email.replace("@gmail.com","")
    items=db.query(tables.CartItems).filter(tables.CartItems.user_id==user.id)
    ids_inDB=[item.product_id for item in items.all()]
    check =  all(id in ids_inDB for id in ids)
    if check:
        new_order=tables.Order(user_id=user.id)
        db.add(new_order)
        db.commit()
        db.refresh(new_order)
        for id in ids:
            #add to order
            item=items.filter(tables.CartItems.product_id==id).first()
            quantity=item.product_quantity
            price=item.prd_inf.price
            order_detail=tables.OrderDetail(order_id=new_order.id,
                                            product_id=id,
                                            quantity=quantity,
                                            price=price
                                            )
            new_his=tables.History(userId=name,productId=id,trained=0)
            db.add(new_his)
            db.add(order_detail)
            db.commit()
            db.refresh(order_detail)
            #update quantity,sold in storage
            db.query(tables.product).filter(tables.product.id==id).update({tables.product.quantity:tables.product.quantity-item.product_quantity})
            db.query(tables.product).filter(tables.product.id==id).update({tables.product.sold:tables.product.sold+item.product_quantity})
            #delete from cart
            db.delete(item)
            db.commit()
    else:
         raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                        detail=f"Sản phẩm không tồn tại")
    return {"message":"Mua thành công",
            "order detail":new_order.order_detail}