#!/usr/bin/env python

import rospy
from f1tenth_car.msg import drive_param
from f1tenth_car.msg import mode
from std_msgs.msg import Bool

current_mode = 0

# Create publisher that publishes messages to drive_pwm topic
pub = rospy.Publisher('drive_parameters', drive_param, queue_size=10)


# Message handler for mode switch messages
def mode_switch(data):
    global current_mode
    current_mode = data.mode

    # Turn off drive and center steering when mode is changed
    msg = drive_param()
    msg.velocity = 0
    msg.angle = 0
    pub.publish(msg)


# Message handler for straight path controller
def straight_path(data):
    if current_mode == 1:
        # Publish message
        pub.publish(data)


# Message handler for keyboard controller
def keyboard(data):
    if current_mode == 2:
        # Publish message
        pub.publish(data)


# Message handler for xbox360 controller
def xbox360(data):
    if current_mode == 3:
        # Publish message
        pub.publish(data)


# Message handler eStop
def eStop(received_eStop):
    global current_mode

    if received_eStop:
        # Set mode to off
        current_mode = 0

        # Turn off drive and center steering when eStop is received
        msg = drive_param()
        msg.velocity = 0
        msg.angle = 0
        pub.publish(msg)


def listener():
    # Create new node called talker
    rospy.init_node('mode_switch', anonymous=True)

    # Subscribe node to straight path controller output topic
    rospy.Subscriber("f1tenth_controller_straight_path/output", drive_param, straight_path)

    # Subscribe node to keyboard controller output topic
    rospy.Subscriber("f1tenth_controller_keyboard/output", drive_param, keyboard)

    # Subscribe node to xbox360 controller output topic
    rospy.Subscriber("f1tenth_controller_xbox360/output", drive_param, xbox360)

    # Subscribe node to mode topic
    rospy.Subscriber("f1tenth_car/mode", mode, mode_switch)

    # Subscribe node to eStop topic
    rospy.Subscriber("eStop", Bool, eStop)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    listener()
