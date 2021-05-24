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
  --tab -e 'bash -c "rosbag play 2021-01-02-13-05-47.bag.active"' \
  \
  --tab -e 'bash -c "rostopic echo -p /ground_truth/state > gt.txt"'\

