!/bin/bash
# For Install ROS Melodic
# 20210308
# by Yang Tzu Hung
# Pre-work
sudo apt update
sudo apt -y upgrade
# Install ROS Melodic 
sudo sh -c'echo“ deb http://packages.ros.org/ros/ubuntu $（lsb_release -sc）main”> /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver'hkp：//keyserver.ubuntu.com：80'--recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt -y install ros-melodic-desktop-full #don't use school network
sudo apt update
sudo apt install --fix-missing
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update
sudo apt update
sudo apt -y upgrade
