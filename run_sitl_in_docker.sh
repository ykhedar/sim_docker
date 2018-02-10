#!/bin/bash


cd home/root/src/Firmware/
#make posix_sitl_default gazebo

#export PX4_HOME_LAT=52.314157
#export PX4_HOME_LON=10.548070
#export PX4_HOME_ALT=28.5

# Sourcing the main ros variables.
source /opt/ros/kinetic/setup.bash

# Export variables to gazebo like gazebo model path etc..
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/posix_sitl_default

# For Px4 launch files export current directory as ros package path
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)

# For sitl_gazebo package
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/../sitl_gazebo

# Additional gazebo model path
export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:$(pwd)/../sitl_gazebo/models

# Now launch the main file. 
roslaunch px4 mavros_posix_sitl.launch