#!/bin/bash
# For clear_costmap
# 20210529
# by YangTzuHung

source '/home/dickman/catkin_ws/devel/setup.bash'
rosservice call /move_base/clear_costmaps "{}"




