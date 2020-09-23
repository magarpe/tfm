#!/bin/bash

## sh **.sh

 
# this is a comment and is ignored
<<COMMENT
    This is a multiple line comment In Bash Scripting
COMMENT


#echo INITIALIZE ROSCORE
#roscore
#gnome-terminal -e "roscore"
#sleep 2

echo gazebo_sim and ps3 control -> connect ps3

gnome-terminal \
  --tab -e 'bash -c "roslaunch tfm_gazebo maze_2uav.launch"' \
  \
  --tab -e 'bash -c "rosrun ardrone_tutorials keyboard_controller.py"'\
#  --tab -e 'bash -c "rosrun ardrone_tutorials keyboard_controller_2.py"'\
  \
#  --tab -e 'bash -c "kazam"'\
#  \
#  --tab -e 'bash -c "rosbag record /ardrone/front/image_raw /ground_truth/state"'  


#  --tab -e 'bash -c "rosrun joy joy_node"' \

# rosbag record /ardrone/front/image_raw

#  --tab -e 'bash -c "roslaunch tfm_gazebo maze.launch"' \


