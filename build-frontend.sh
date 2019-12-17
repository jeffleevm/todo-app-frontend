#!/bin/bash

ng build
docker stop demo-todo-app-frontend
docker rm demo-todo-app-frontend
#docker rmi 201499839889.dkr.ecr.ap-southeast-1.amazonaws.com/demo-todo-app-frontend
docker rmi jeffleehk/demo-todo-app-frontend
#$(aws ecr get-login --no-include-email --region ap-southeast-1)
#docker build -t 201499839889.dkr.ecr.ap-southeast-1.amazonaws.com/demo-todo-app-frontend:latest .
docker build -t jeffleehk/demo-todo-app-frontend:latest .
#docker push 201499839889.dkr.ecr.ap-southeast-1.amazonaws.com/demo-todo-app-frontend:latest
docker push jeffleehk/demo-todo-app-frontend:latest
