!/bin/bash
# For Install ROS Noetic
# 20220711
# by Yang Tzu Hung
# Pre-work
sudo apt update
sudo apt -y upgrade
# Install ROS Melodic 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt -y install ros-noetic-desktop-full
sudo apt update
sudo apt -y install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
sudo apt update
sudo apt -y upgrade
