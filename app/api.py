from fastapi import FastAPI
from . import tables
from .database import engine
from .routers import product,user,login,cart
from fastapi.middleware.cors import CORSMiddleware

app=FastAPI()

# origins = [
#     "http://localhost",
#     "http://localhost:3000",
# ]
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=origins,
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

tables.Base.metadata.create_all(engine)

app.include_router(product.router)
app.include_router(user.router)
app.include_router(login.router)
app.include_router(cart.router)