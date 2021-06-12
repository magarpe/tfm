#!/bin/bash

## sh CCN.sh


#echo INITIALIZE ROSCORE
#roscore
#gnome-terminal -e "roscore"
#sleep 2

echo VISUALIZATION-RVIZ, LAUNCH AND ROSBAGS

# gnome-terminal \
#   --tab -e 'bash -c "roslaunch ccmslam Server_1.launch"' \
#   --tab -e 'bash -c "rviz -d ~/rviz_upview.rviz"' \
#   --tab -e 'bash -c "roslaunch ccmslam Client0_ardrone.launch"' \
#   --tab -e 'bash -c "rosbag play ~/1.bag /ground_truth/state:=/ground_truth/state_0 /ardrone/front/image_raw:=/ardrone/front/image_raw_0"' \
#   --tab -e 'bash -c "rqt"'

gnome-terminal \
  --tab -e 'bash -c "roslaunch ccmslam Server_1.launch"' \
  --tab -e 'bash -c "rviz -d ~/rviz_upview.rviz"' \
  --tab -e 'bash -c "roslaunch ccmslam Client0_ardrone.launch"' \
  --tab -e 'bash -c "rosbag play ~/2.bag /ground_truth/state:=/ground_truth/state_0 /ardrone/front/image_raw:=/ardrone/front/image_raw_0"' \
  --tab -e 'bash -c "rqt"'

     
