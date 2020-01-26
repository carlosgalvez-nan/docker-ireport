#!/bin/bash
#-*- ENCODING: UTF-8 -*-

docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       ireport
