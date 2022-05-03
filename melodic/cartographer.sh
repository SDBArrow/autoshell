!/bin/bash
# for other cartographer
# 20210308
# by Yang Tzu Hung
# -------pre-work-------
sudo apt update
# -------Install cartographer------
sudo apt-get install -y python-wstool python-rosdep ninja-build stow
mkdir catkin_ws2
cd catkin_ws2
wstool init src
wstool merge -t src https://raw.githubusercontent.com/cartographer-project/cartographer_ros/master/cartographer_ros.rosinstall
wstool update -t src
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y
src/cartographer/scripts/install_abseil.sh
sudo apt-get remove ros-${ROS_DISTRO}-abseil-cpp
atkin_make_isolated --install --use-ninja
