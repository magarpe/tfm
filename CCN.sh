#!/bin/bash          

## sh CCN.sh

 
# this is a comment and is ignored
<<COMMENT
    This is a multiple line comment In Bash Scripting
COMMENT

#echo INITIALIZE ROSCORE
#roscore
#gnome-terminal -e "roscore"
#sleep 2

echo VISUALIZATION-RVIZ, LAUNCH AND ROSBAGS

gnome-terminal \
  --tab -e 'bash -c "rviz -d ~/ccmslam_ws/src/ccm_slam/cslam/conf/rviz/ccmslam.rviz"' \
  		     \
  --tab -e 'bash -c "roslaunch ccmslam Server.launch"' \
  --tab -e 'bash -c "roslaunch ccmslam Client0_euroc.launch"' \
  --tab -e 'bash -c "roslaunch ccmslam Client1_euroc.launch"' \
  		     \
  --tab -e 'bash -c "rosbag play ~/bag/MH_01_easy.bag --start 45"'\
  --tab -e 'bash -c "rosbag play ~/bag/MH_02_easy.bag --start 35 /cam0/image_raw:=/cam0/image_raw1"'
