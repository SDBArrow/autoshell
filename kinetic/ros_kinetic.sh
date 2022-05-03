#!/bin/bash
# For Install Ros Kinetic
# 20201118
# by Young Tzu Hong 
# Pre-work
sudo apt-get update
sudo apt-get -y upgrade
# Install ROS Kinetic 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get -y install ros-kinetic-desktop-full
sudo apt-get -y install ros-kinetic-desktop-full
sudo apt-get update
sudo apt-get install --fix-missing
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update
