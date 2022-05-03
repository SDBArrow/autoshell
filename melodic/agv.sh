#!/bin/bash   
# For start AGV
# 20210529
# by YangTzuHung
#啟動節點管理器
gnome-terminal -- bash -c "source '/opt/ros/melodic/setup.bash';roscore"
#等待節點管理器開完
sleep 3
#Lidar權限
sudo chmod 777 /dev/ttyUSB0
#Arduino權限 及 馬達控制和電量資料
sudo chmod 777 /dev/ttyACM0
gnome-terminal -- bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';rosrun rosserial_python serial_node.py /dev/ttyACM0"
#ROSbridge
gnome-terminal -- bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';roslaunch rosbridge_server rosbridge_websocket.launch"
#轉換資料格式給WebAPP
gnome-terminal -- bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';rosrun agv_robot_pose_publisher agv_robot_pose_publisher"
# Move_base+Cartographer+rplidar+MapServer 節點
gnome-terminal -- bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';roslaunch agv_nav move_base_cartographer.launch"
sleep 40                                                       
gnome-terminal -- bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';rosservice call /move_base/clear_costmaps "{}""

#gnome-terminal -- bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';rostopic pub /move_base/cancel actionlib_msgs/GoalID -- {}"


#-x 被棄用
#gnome-terminal -x bash -c "source '/home/dickman/catkin_ws/devel/setup.bash';roslaunch rplidar_ros rplidar.launch"



