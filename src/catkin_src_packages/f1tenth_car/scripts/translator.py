#!/usr/bin/env python

import rospy
from f1tenth_car.msg import drive_values
from f1tenth_car.msg import drive_param

# Define saturation limits for velocity and steering angle
MAX_VELOCITY = 100
MIN_VELOCITY = -100
MAX_ANGLE = 100
MIN_ANGLE = -100

INVERT_STEERING = True

def callback(data):
    # Log and print received data
    rospy.loginfo(rospy.get_caller_id() + ": I heard velocity %f and angle %f", data.velocity, data.angle)

    # Saturate velocity
    velocity = saturate(data.velocity, MIN_VELOCITY, MAX_VELOCITY)

    # Saturate steering angle
    angle = saturate(data.angle, MIN_ANGLE, MAX_ANGLE)

    # Invert steering angle
    if INVERT_STEERING:
        angle = -angle

    # Create message
    msg = drive_values()
    msg.pwm_drive = translate(velocity, -100, 100, 6554, 13108)
    msg.pwm_angle = translate(angle, -100, 100, 6554, 13108)

    # Publish message
    rospy.pub.publish(msg)

    # Log and print sent data
    rospy.loginfo(rospy.get_caller_id() + ": I sent pwm_drive %i and pwm_angle %i", msg.pwm_drive, msg.pwm_angle)


def listener():
    # Create new node called talker
    rospy.init_node('translator', anonymous=True)

    # Subscribe node to drive_parameters topic
    rospy.Subscriber("f1tenth_controller_straight_path/output", drive_param, callback)

    # Create publisher that publishes messages to drive_pwm topic
    rospy.pub = rospy.Publisher('drive_pwm', drive_values, queue_size=10)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


# Function copied from https://stackoverflow.com/questions/1969240/mapping-a-range-of-values-to-another
def translate(value, left_min, left_max, right_min, right_max):
    # Figure out how 'wide' each range is
    left_span = left_max - left_min
    right_span = right_max - right_min

    # Convert the left range into a 0-1 range (float)
    value_scaled = float(value - left_min) / float(left_span)

    # Convert the 0-1 range into a value in the right range.
    return right_min + (value_scaled * right_span)


# Saturate given value to between given limits
def saturate(value, min_value, max_value):
    if value > max_value:
        value = max_value
    if value < min_value:
        value = min_value

    return value


if __name__ == '__main__':
    listener()
