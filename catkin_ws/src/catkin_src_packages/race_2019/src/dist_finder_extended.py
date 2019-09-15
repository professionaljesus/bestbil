#!/usr/bin/env python

import rospy
import math
from sensor_msgs.msg import LaserScan
from race_2019.msg import pid_input

vel = 7  # Between -100, 100
ANGLE_INCREMENT = 0.25
ANGLE_MAX = 225
ANGLE_MIN = -45
IDX_OFFSET = (0 - ANGLE_MIN) / ANGLE_INCREMENT

pub = rospy.Publisher('race_2019/car_state', pid_input, queue_size=10)

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
    theta = 30  # degrees
    delay_comp = 0.05  # scaling factor (proportional to seconds)
    dr = getRange(data, theta)
    dfr = getRange(data, 80)
    dfl = getRange(data, 100)
    dl = getRange(data, 150)
    theta_rad = math.radians(theta)


    msg = pid_input()
    
    msg.dr = dr
    msg.dfr = dfr
    msg.dfl = dfl
    msg.dl = dl
    pub.publish(msg)

if __name__ == '__main__':
    print("Laser node started\n")
    rospy.init_node('dist_finder', anonymous=True)
    rospy.Subscriber("scan", LaserScan, callback)
    rospy.spin()
