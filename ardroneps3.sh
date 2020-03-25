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
  --tab -e 'bash -c "roslaunch tfm_gazebo maze_test.launch"' \
  \
  --tab -e 'bash -c "rosrun ardrone_tutorials joystick_controller.py"' \
  --tab -e 'bash -c "rosrun joy joy_node"' \
