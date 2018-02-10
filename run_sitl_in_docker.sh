#!/bin/bash


cd home/root/src/Firmware/
#make posix_sitl_default gazebo

#export PX4_HOME_LAT=52.314157
#export PX4_HOME_LON=10.548070
#export PX4_HOME_ALT=28.5

source /opt/ros/kinetic/setup.bash
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/posix_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo
roslaunch px4 mavros_posix_sitl.launch