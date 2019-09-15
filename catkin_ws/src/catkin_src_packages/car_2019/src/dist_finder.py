#!/usr/bin/env python
# DIST_FINDER

import rospy
import math
from sensor_msgs.msg import LaserScan
from car_2019.msg import pid_input
from std_msgs.msg import Bool

desired_trajectory = 1
dist_from_wall = 1
vel = 7  # Between -100, 100
ANGLE_INCREMENT = 0.25
ANGLE_MAX = 225
ANGLE_MIN = -45
IDX_OFFSET = (0 - ANGLE_MIN) / ANGLE_INCREMENT

c_old=0
d_old=0

pub = rospy.Publisher('car_2019/error', pid_input, queue_size=10)
eStop = rospy.Publisher('eStop', Bool, queue_size=10)

# 	Input: 	data: Lidar scan data
# 			theta: The angle at which the distance is requried
# 	OUTPUT: distance of scan at angle theta
def getRange(data, theta):
    # Find the index of the array that corresponds to angle theta.
    # Return the lidar scan value at that index
    # Do some error checking for NaN and ubsurd values
    # Your code goes here

    # Check to make sure theta value is between -45 and 225 degrees
    if theta < ANGLE_MIN or theta >= ANGLE_MAX:
        print("Inputted theta must be between ", ANGLE_MIN, " and ", ANGLE_MAX, "!\n")
        return -1

    # Return scan data at index of chosen angle, offset by IDX_OFFSET
    offset_idx = int(round(theta / ANGLE_INCREMENT + IDX_OFFSET))
    return data.ranges[offset_idx]


def callback(data):
    global c_old
    global d_old
    theta = 50  # degrees
    delay_comp = 0.05  # scaling factor (proportional to seconds)
    y_offset = dist_from_wall  # meters
    a = getRange(data, theta)
    b = getRange(data, 0)
    c = getRange(data, 85)
    d = getRange(data, 95)
    swing = math.radians(theta)
    # Your code goes here
    # Determine perpendicular distance error to the wall and angle error
    alpha = math.atan2(a * math.cos(swing) - b, a * math.sin(swing))
    ac_dist = vel * delay_comp
    error = -(b * math.cos(alpha) + ac_dist * math.sin(alpha) - y_offset)
    # END

    msg = pid_input()
    #print(error)	#debugging printline
    msg.pid_error = error
    msg.pid_vel = vel

    if c < 1.5 or d < 1.5 :
         msg.pid_vel = 0
	 print ("hej")
         if math.fabs(c-c_old)<0.001 or math.fabs(d-d_old)<0.001:

       	  	print("tjena")
  	#	eStop.publish(True)

    pub.publish(msg)
    
    c_old=c
    d_old=d

if __name__ == '__main__':
    print("Laser node started\n")
    rospy.init_node('dist_finder', anonymous=False)
    rospy.Subscriber("scan", LaserScan, callback)
    rospy.spin()
