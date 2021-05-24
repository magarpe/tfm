#!/bin/bash

## sh CCN.sh


#echo INITIALIZE ROSCORE
#roscore
#gnome-terminal -e "roscore"
#sleep 2

echo VISUALIZATION-RVIZ, LAUNCH AND ROSBAGS

gnome-terminal \
  --tab -e 'bash -c "roslaunch ccmslam Server_2.launch"' \
  --tab -e 'bash -c "rviz -d ~/rviz_upview.rviz"' \
  --tab -e 'bash -c "roslaunch ccmslam Client0_ardrone.launch"' \
  --tab -e 'bash -c "roslaunch ccmslam Client1_ardrone.launch"' \
  --tab -e 'bash -c "rosbag play ~/1.bag /ground_truth/state:=/ground_truth/state_0 /ardrone/front/image_raw:=/ardrone/front/image_raw_0"' \
  --tab -e 'bash -c "rosbag play ~/2.bag /ground_truth/state:=/ground_truth/state_1 /ardrone/front/image_raw:=/ardrone/front/image_raw_1"' \
#  --tab -e 'bash -c "rosrun ccmslam sensor_node.py"'\
#  --tab -e 'bash -c "rqt"'

#--tab -e 'bash -c "rosbag play ~/2020-09-29-16-00-00.bag.active"'

#sleep 15
 
#gnome-terminal -e 'bash -c "rosbag play ~/bag/acc1/input.bag --start 30"'\

#gnome-terminal -e 'bash -c "rosbag play ~/bag/maze12_3.bag --start 60"'\
                                                    
  
# gnome-terminal \
#  --tab -e 'bash -c "roslaunch ccmslam Server_1.launch"' \
#  --tab -e 'bash -c "roslaunch ccmslam Client0_euroc.launch"' \
#  --tab -e 'bash -c "rosbag play ~/bag/euro/MH_01_easy.bag"'\
#  --tab -e 'bash -c "rviz -d ~/ccmslam_ws/src/ccm_slam/cslam/conf/rviz/ccmslam.rviz"' \

                                                    
