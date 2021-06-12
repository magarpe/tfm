#!/usr/bin/env python

import rospy
import math, random
from nav_msgs.msg import Odometry
from std_msgs.msg import Float64
import message_filters


def calc_distance(gps1, gps2):
    x0 = round(gps1.pose.pose.position.x, 6)
    y0 = round(gps1.pose.pose.position.y, 6)
    z0 = round(gps1.pose.pose.position.z, 6)
    x1 = round(gps2.pose.pose.position.x, 6)
    y1 = round(gps2.pose.pose.position.y, 6)
    z1 = round(gps2.pose.pose.position.z, 6)
    d = math.sqrt((x0 - x1)**2 + (y0 - y1)**2 + (z0 - z1)**2)
    d_gauss = d + d * random.gauss(0, 0.5) * 0.1
    rospy.loginfo("Distance is %s", d)
    # rospy.loginfo("Distance (error) is %s", d_gauss)
    pub.publish(d_gauss)
    return d_gauss


#Subscriber node function which will subscribe the messages from the Topic
def messageSubsPubl():
    # initialize the subscriber node called 'distancesensor' and publishes 'distancemeasure'
    rospy.init_node('distancesensor', anonymous=False)
    global pub
    pub = rospy.Publisher('distancemeasure', Float64, queue_size=10)

    gps1 = message_filters.Subscriber('/ground_truth/state_0', Odometry)
    gps2 = message_filters.Subscriber('/ground_truth/state_1', Odometry)
    ts = message_filters.ApproximateTimeSynchronizer([gps1, gps2], 10, 5)
    ts.registerCallback(calc_distance)
    
    rospy.spin()
    
if __name__ == '__main__':
    print('Running...')
    try:
        messageSubsPubl()
    except rospy.ROSInterruptException:
        pass

