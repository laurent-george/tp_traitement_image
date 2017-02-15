#!/usr/bin/env bash
echo "START"

echo "Cloning remote repo"
git clone https://github.com/laurent-george/vision_esme_2017.git data

echo "Removing previous docker container if found" 
docker rm vision-esme
echo "Starting new container"
docker run -it -e LOCAL_USER_ID=`id -u $USER` --name vision-esme --net host --privileged -v `pwd`/data:/data --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" laurentgeorge3/esme-vision
