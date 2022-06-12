#!/bin/bash

docker run --rm \
       --network=host \
       --privileged \
       --gpus all\
       --volume="/dev:/dev" \
       --volume="/mnt/ssd_2T/video/sthv2/videos:/dataset_raw" \
       --volume="/mnt/ssd_2T/video/sthv2/:/dataset_out" \
       --volume="/home/ubuntu18/Codes/actionrecognition/2022setup:/dataset_blob" \
       --device /dev/snd:/dev/snd \
       -e DISPLAY=$DISPLAY \
       -e QT_X11_NO_MITSHM=1 \
       --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       --entrypoint bash \
       -it denseflow:22
