#!/usr/bin/env python

import rospy
from f1tenth_car.msg import drive_param
from race_2019.msg import pid_input
from race_2019.msg import pid_param

kp = 100.0
ki = 0.0
kd = 120.0
h = 0.05    #time between control updates
servo_offset = -12.5  # zero correction offset in case servo is misaligned. (this could be fixed with an integral part ki in the controller)
vel_input = 7.0 # user inputted during runtime
old_error = 0.0
y_old = 0.0
beta = 1.0      #setpoint weighting
d=0.0
da = 0.0

#lateral bias (used to set where on the width of the hallway the y_ref should be: 0 is at the right wall, 1 is at the left)
lb = 0.5

pub = rospy.Publisher("race_2019/drive_param", drive_param, queue_size=1)


def control(data):
    global old_error
    global d

    width = data.wdl + data.wdr
    yref = lb * width   
    #yref = 1       #fixed distance from right wall instead of relative
    y = data.wdr
    e = beta*yref - y
    #e = e * scaling_factor
    d = da * (e - old_error)
    u = kp*e + d + servo_offset
    # Saturate control signal
    if u > 100: 
	u=100
    if u < -100:
	u=-100
    old_error = e
    

    #print e,
    #print ",",
    #print u,
    #print ",",
    #rospy.loginfo("ERROR: %f\tDERIVATE: %f\tANGLE:%f", steering_error, d, angle)

    msg = drive_param()
    msg.velocity = vel_input
    msg.angle = u
    pub.publish(msg)

def pid_parameters(data):
    global kp
    global ki
    global kd
    global vel_input
    global lb
    global servo_offset
    global da

    kp = kp+data.kp
	#very ugly quickfix to not update message structure
    lb = lb+data.lb
    kd = kd+data.kd
    servo_offset = servo_offset+data.servo_offset
    da = kd/h
    vel_input = vel_input+data.velocity
    rospy.loginfo("KP: %f\tKD: %f\tLB: %f\tVELOCITY: %f", kp, kd, lb, vel_input)


if __name__ == '__main__':
    global da
    da = kd/h
    print("Controller started\n")
    rospy.init_node('pid_controller', anonymous=True)
    rospy.Subscriber("race_2019/car_state", pid_input, control)
    rospy.Subscriber("race_2019/pid", pid_param, pid_parameters)
    rospy.spin()
