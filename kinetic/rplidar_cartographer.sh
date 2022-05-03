#!/bin/bash
# for open uwb rplidar
# 20201122
# by Young Tzu Hong
gnome-terminal -x bash -c "source '/opt/ros/kinetic/setup.bash';roscore"
sleep 5
sudo chmod 777 /dev/ttyUSB0
gnome-terminal -x bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';roslaunch rplidar_ros rplidar.launch"
sleep 5
gnome-terminal -x bash -c "source '/home/dickman/catkin_ws2/devel_isolated/setup.bash';roslaunch cartographer_ros demo_revo_lds.launch"

