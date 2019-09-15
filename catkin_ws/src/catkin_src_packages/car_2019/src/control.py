#!/usr/bin/env python
# CONTROLLER

import rospy
from f1tenth_car.msg import drive_param
from car_2019.msg import pid_input
from car_2019.msg import pid_param

kp = 4
ki = 0.0
kd = 10
D = 0.0
old_steering_error = 0.0
h = 0.05
N = 5
ad = 0.0
bd = 0.0
scaling_factor = 50  # Currently arbitrary
servo_offset = 0  # zero correction offset in case servo is misaligned.
vel_input = 7.0 # user inputted during runtime

pub = rospy.Publisher("car_2019/drive_param", drive_param, queue_size=1)


def control(data):
    
    global old_steering_error
    global D
    scaling_factor = 50

    # Steering PID
    steering_error = data.pid_error * scaling_factor
    old_steering_error=data.pid_old_error
    D = ad*D - bd*(steering_error-old_steering_error)
    angle = kp*steering_error - servo_offset + D

    # Saturate control signal
    angle = 100 if angle > 100 else angle
    angle = -100 if angle < -100 else angle

    msg = drive_param()
    msg.velocity = data.pid_vel
    msg.angle = angle
    pub.publish(msg)

    old_steering_error = steering_error

def pid_parameters(data):
    global kp
    global ki
    global kd
    global vel_input
    global ad
    global bd
    global h
    global N

    kp = kp+data.kp
    ki = data.ki
    kd = kd+data.kd
    vel_input = data.velocity
    ad=kd/(kd+N*h)
    bd=kp*ad*N
    print(kd)

if __name__ == '__main__':
    print("Control node started\n")
    rospy.init_node('pid_controller', anonymous=True)
    rospy.Subscriber("car_2019/error", pid_input, control)
    rospy.Subscriber("car_2019/pid_parameters", pid_param, pid_parameters)
    rospy.spin()
