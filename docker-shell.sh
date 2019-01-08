#!/bin/bash

source docker-vars.sh

sudo docker rm $APP
sudo docker run -it \
    --name $APP \
    $NAME /bin/bash
