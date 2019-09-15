#!/usr/bin/env python

import rospy
import xbox
from f1tenth_car.msg import drive_param

# Create node xbox360_control
rospy.init_node('xbox360_control', anonymous=True)

# Create publisher that publishes to drive_parameters topic
pub = rospy.Publisher('f1tenth_controller_xbox360/output', drive_param, queue_size=10)

# Set rate which the loop is run with
rate = rospy.Rate(100)

# Initialize xbox 360 controller
joy = xbox.Joystick()

steering = 0

while not rospy.is_shutdown():

    if joy.connected():
        # Calculate velocity and steering angle from joystick and trigger values
        forward = (joy.rightTrigger() - joy.leftTrigger()) * 20
        left = joy.leftX() * -100

        steering = steering * 0 + 1 * left

        # Create message
        msg = drive_param()
        msg.velocity = forward
        msg.angle = steering

        # Publish message
        pub.publish(msg)

    rate.sleep()
