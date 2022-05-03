#!/bin/bash
# for open uwb rplidar
# 20201118
# by Young Tzu Hong

sudo chmod 777 /dev/ttyUSB0
sudo chmod 777 /dev/ttyUSB1
source /home/dickman/catkin_ws/devel/setup.bash
gnome-terminal -x roscore
sleep 5
gnome-terminal -x roslaunch nlink_parser linktrack.launch
sleep 5
gnome-terminal -x roslaunch rplidar_ros rplidar.launch
sleep 5
gnome-terminal -x rosrun uwb_rplidar_subscriber uwb_rplidar_subscriber_node

