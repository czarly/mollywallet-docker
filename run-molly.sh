#!/bin/bash

# allow access from localhost
xhost + 127.0.0.1

# run molly wallet with X11 forwarding and keep running until it quits
docker run -it -e DISPLAY=host.docker.internal:0 -v $PWD/keys:/keys czarly/mollywallet

