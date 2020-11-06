#!/bin/bash
xhost + local:root

docker run -it --rm \
           --net host \
           --gpus all \
           --privileged \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $(realpath ..):/root/catkin_ws/src/voxgraph \
           -w /root/catkin_ws/src/voxgraph \
           $@ \
           voxgraph
