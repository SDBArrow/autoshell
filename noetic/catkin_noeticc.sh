!/bin/bash
# for catkin setup
# 20210308
# by Yang Tzu Hung 
# ------Installing catkin------
sudo apt-get install ros-noetic-catkin
sudo apt-get install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
# ------Creating a workspace For catkin------
source /opt/ros/noetic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
echo $ROS_PACKAGE_PATH
sudo chown dickman catkin_ws/ -R #shell 創建的會鎖權限
