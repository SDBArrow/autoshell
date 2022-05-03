#!/bin/bash
# for save cartographer
# 20201223
# by Yang Tzu Hong

rosservice call /finish_trajectory 0
rosservice call /write_state "{filename: '${HOME}/Downloads/test.pbstream', include_unfinished_submaps: true}"
rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=${HOME}/Downloads/test -pbstream_filename=${HOME}/Downloads/test.pbstream resolution=0.05


rosservice call /start_trajectory 0
