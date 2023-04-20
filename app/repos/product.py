from sqlalchemy.orm import Session
from .. import tables
from fastapi import HTTPException,status
import tensorflow as tf
from sqlalchemy.sql.expression import func

def get_all(db:Session):
    products=db.query(tables.product).order_by(func.random()).all()
    return products

def get_cat(dm,db:Session):
    products=db.query(tables.product).filter(tables.product.danhmuc==dm).order_by(func.random()).all()
    if not products:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)
    return products

def get_product(id_prd,db:Session):
    product=db.query(tables.product).filter(tables.product.id==id_prd).first()
    if not product:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Product with the id {id_prd} is not available')
    return product

#chuyen tieng viet co dau thanh khong dau
def normalize(keyword):
    accented_words="ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ"
    unaccented_words="aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD"
    keyword=keyword.lower()
    for letter in range(len(accented_words)):
        keyword=keyword.replace(accented_words[letter],unaccented_words[letter])
    return keyword

def get_search(keyword,minprice,maxprice,sortby,order,cat,db:Session):
    if cat:
        data_searched=db.query(tables.product).filter(tables.product.danhmuc==cat)
    else:
        data_searched=db.query(tables.product)
    if keyword:
        keyword=normalize(keyword)
        search = "%{}%".format(keyword)
        data_searched=data_searched.filter(tables.product.name_unaccented.like(search))
    if minprice:
        if maxprice:
            if minprice>maxprice:
                raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f'Vui lòng điền khoảng giá phù hợp')   
            else:
                data_searched=data_searched.filter(tables.product.price.between(str(minprice),str(maxprice)))
        else:
            data_searched=data_searched.filter(tables.product.price>=minprice)
    else:
        if maxprice:
            data_searched=data_searched.filter(tables.product.price<=maxprice)
    if sortby:
        if sortby=="price":
            if order=="acs":
                data_searched=data_searched.order_by(tables.product.price.asc())
            else:
                data_searched=data_searched.order_by(tables.product.price.desc())
        else:
            if order=="acs":
                data_searched=data_searched.order_by(tables.product.sold.asc())
            else:
                data_searched=data_searched.order_by(tables.product.sold.desc())
    else:
        data_searched=data_searched.order_by(func.random())
    return data_searched.all()

def recommender(productId,db:Session):
    imported_model = tf.saved_model.load(r'E:\Folders\longworkspace\Shop-web-with-Recommender-System\recommender\models')
    result_tensor =  imported_model.signatures['call_item_item'](tf.constant([productId]))
    result=result_tensor["output_0"]
    ids = result[:20].numpy().tolist()
    products=db.query(tables.product).filter(tables.product.id.in_(ids))
    return products.all()