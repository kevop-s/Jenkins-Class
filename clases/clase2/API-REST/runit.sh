#!/bin/bash

docker build -t flask-api .

docker run -itd -p 5000:5000 flask-api

#GET todos los items 
curl http://localhost:5000/todos

#GET un item 
curl http://localhost:5000/todos/todo3

#DELETE un item 
curl http://localhost:5000/todos/todo2 -X DELETE -v

# POST 
curl http://localhost:5000/todos -d "task=sNuevo texto" -X POST -v

# PUT 

curl http://localhost:5000/todos/todo3 -d "task=something different" -X PUT -v
