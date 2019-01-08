#!/bin/bash

source docker-vars.sh

# sudo docker rmi -f $NAME
sudo docker build -t $NAME .


