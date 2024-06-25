#!/bin/bash
cd ~/mjpg-streamer/mjpg-streamer-experimental
export LD_LIBRARY_PATH=.
./mjpg_streamer -i "input_uvc.so -d /dev/video0 -r 1280x480" -o "output_http.so -w ./www --listen 0.0.0.0"
