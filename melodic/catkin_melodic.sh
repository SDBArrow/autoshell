!/bin/bash
# for catkin setup
# 20210308
# by Yang Tzu Hung 
# ------Installing catkin------
sudo apt-get install ros-melodic-catkin
sudo apt-get install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
# ------Creating a workspace For catkin------
source /opt/ros/melodic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
echo $ROS_PACKAGE_PATH
sudo chown dickman catkin_ws/ -R
# ------Serial Library------
cd ~/catkin_ws/src/
git clone https://github.com/nooploop-dev/serial.git
cd serial
make
make test
sudo make install
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
# ------NLink Parser ROS Package(UWB)
cd catkin_ws/src
git clone --recursive https://github.com/nooploop-dev/nlink_parser.git
cd ../
catkin_make
source devel/setup.bash
# ------set source cmd------
cd
vim .bashrc
#source ~/home/dickman/catkin_ws/devel/setup.bash
