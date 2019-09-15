#!/usr/bin/env python

import rospy
from f1tenth_car.msg import drive_param
from f1tenth_controller_straight_path.msg import pid_input
from f1tenth_controller_straight_path.msg import pid_param

kp = 1
ki = 0
kd = 0
scaling_factor = 50  # Currently arbitrary
servo_offset = 0  # zero correction offset in case servo is misaligned.
vel_input = 7.0 # user inputted during runtime

pub = rospy.Publisher("f1tenth_controller_straight_path/output", drive_param, queue_size=1)


def control(data):
    scaling_factor = 50

    # Steering PID
    steering_error = data.pid_error * scaling_factor
    angle = kp * steering_error - servo_offset

    # Saturate control signal
    angle = 100 if angle > 100 else angle
    angle = -100 if angle < -100 else angle

    msg = drive_param()
    msg.velocity = vel_input
    msg.angle = angle
    pub.publish(msg)


def pid_parameters(data):
    global kp
    global ki
    global kd
    global vel_input

    kp = data.kp
    ki = data.ki
    kd = data.kd
    vel_input = data.velocity


if __name__ == '__main__':
    rospy.init_node('pid_controller', anonymous=True)
    rospy.Subscriber("f1tenth_controller_straight_path/error", pid_input, control)
    rospy.Subscriber("f1tenth_controller_straight_path/pid_parameters", pid_param, pid_parameters)
    rospy.spin()
