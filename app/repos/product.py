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
                            detail=f'Sản phẩm với id {id_prd} không tồn tại')
    return product

#chuyen tieng viet co dau thanh khong dau
def normalize(keyword):
    accented_words="ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ"
    unaccented_words="aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD"
    keyword=keyword.lower()
    for letter in range(len(accented_words)):
        keyword=keyword.replace(accented_words[letter],unaccented_words[letter])
    return keyword

def get_search(keyword,minprice,maxprice,sortby,order,cat,db:Session,current_user):
    data_searched=db.query(tables.product)
    if current_user:
        email=current_user.email
        name=email.replace("@gmail.com","")
        #check old user
        pur_his=db.query(tables.History).filter(tables.History.userId==name).all()
        if pur_his:
            ids=[row.productId for row in pur_his]
            trained=[row.trained for row in pur_his]
            if 1 in trained:
                data_searched=product_user(name,ids,db)
    if cat:
        data_searched=db.query(tables.product).filter(tables.product.danhmuc==cat)
    if keyword:
        data_searched=db.query(tables.product)
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
    return data_searched.all()

def recommender(productId,db:Session):
    imported_model = tf.saved_model.load(r'E:\Folders\longworkspace\Shop-web-with-Recommender-System\recommender\model1405')
    result_tensor =  imported_model.signatures['call_item_item'](tf.constant([productId]))
    result=result_tensor["output_0"]
    ids = result[:20].numpy().tolist()
    products=db.query(tables.product).filter(tables.product.id.in_(ids))
    return products.order_by(func.random()).all()

#call product for old user
def product_user(user,prd_purchased,db:Session):
    imported_model = tf.saved_model.load(r'E:\Folders\longworkspace\Shop-web-with-Recommender-System\recommender\model1405')
    user_result_tensor = imported_model.signatures['call_user_user'](tf.constant(user, dtype=tf.string))
    users=user_result_tensor['output_0'].numpy()
    str_users=[user.decode('utf-8') for user in users]
    #get recommended products id
    list_recommend=[]
    for user in str_users[1:30]:
        user_items=db.query(tables.History).filter(tables.History.userId==user).all()
        for row in user_items:
            list_recommend.append(row.productId)
    list_recommend=[*set(list_recommend)]
    ids=[id for id in list_recommend if id not in prd_purchased]
    products=db.query(tables.product).filter(tables.product.id.in_(ids))
    return products