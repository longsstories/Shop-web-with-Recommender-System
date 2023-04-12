from sqlalchemy.orm import Session
from .. import tables
from fastapi import HTTPException,status,Query
import tensorflow as tf

def get_all(db:Session):
    products=db.query(tables.product).all()
    return products

def get_cat(dm,db:Session):
    products=db.query(tables.product).filter(tables.product.cat==dm).all()
    if not products:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)
    return products

def get_product(id_prd,db:Session):
    product=db.query(tables.product).filter(tables.product.id==id_prd).first()
    if not product:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Product with the id {id_prd} is not available')
    return product

def get_search(name,db:Session):
    search = "%{}%".format(name)
    nameinDB=db.query(tables.product).filter(tables.product.name.like(search)).all()
    return nameinDB

def recommender(productId):
    imported_model = tf.saved_model.load('path to model')
    result_tensor =  imported_model.signatures['call_item_item'](tf.constant([productId]))
    result=result_tensor["output_0"]
    rcm_products = result[:12].numpy().tolist()
    return rcm_products