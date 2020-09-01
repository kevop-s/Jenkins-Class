#!/bin/bash

docker build -t flask-api .

docker run -itd -p 8080:5000 flask-api


