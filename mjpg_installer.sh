#!/bin/bash -eu
set -x
# Update and install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install libjpeg8-dev imagemagick libv4l-dev v4l-utils make gcc git cmake g++ -y

cd ~/mjpg-streamer/mjpg-streamer-experimental
make
sudo make install
