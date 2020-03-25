#!/bin/bash          

## sh CCN.sh


#echo INITIALIZE ROSCORE
#roscore
#gnome-terminal -e "roscore"
#sleep 2

echo VISUALIZATION-RVIZ, LAUNCH AND ROSBAGS

gnome-terminal \
  --tab -e 'bash -c "roslaunch ccmslam Server_1.launch"' \
  --tab -e 'bash -c "roslaunch ccmslam Client0_ardrone.launch"' \
  --tab -e 'bash -c "rosbag play ~/bag/maze_front.bag"'\
  --tab -e 'bash -c "rviz -d ~/ccmslam_ws/src/ccm_slam/cslam/conf/rviz/ccmslam.rviz"' \

                                                    
  
# gnome-terminal \
#  --tab -e 'bash -c "roslaunch ccmslam Server_1.launch"' \
#  --tab -e 'bash -c "roslaunch ccmslam Client0_euroc.launch"' \
#  --tab -e 'bash -c "rosbag play ~/bag/MH_01_easy.bag"'\
#  --tab -e 'bash -c "rviz -d ~/ccmslam_ws/src/ccm_slam/cslam/conf/rviz/ccmslam.rviz"' \

                                                    