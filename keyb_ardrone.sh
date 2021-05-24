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

echo gazebo_sim and keyboard control, recording front image and ground truth

gnome-terminal \
  --tab -e 'bash -c "roslaunch tfm_gazebo maze.launch"' \
  --tab -e 'bash -c "rosrun ardrone_tutorials keyboard_controller.py"'\
  --tab -e 'bash -c "rosbag record /ardrone/front/image_raw /ground_truth/state"' 
#  --tab -e 'bash -c "rosbag record /ardrone/front/image_raw"'
#  --tab -e 'bash -c "kazam"'\
#  \
 

# rosbag record /ardrone/front/image_raw


