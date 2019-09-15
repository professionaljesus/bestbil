#!/usr/bin/env python
#coding=utf-8

import rospy
from race.msg import drive_values
from race.msg import drive_param
from std_msgs.msg import Bool


"""
What you should do:
 1. Subscribe to the keyboard messages (If you use the default keyboard.py, you must subcribe to "drive_paramters" which is publishing messages of "drive_param")
 2. Map the incoming values to the needed PWM values
 3. Publish the calculated PWM values on topic "drive_pwm" using custom message drive_values
"""

global pub

def talker():
	global pub
	pub = rospy.Publisher('drive_pwm', drive_values, queue_size=10) 
	sub = rospy.Subscriber('drive_parameters', drive_param, updatePWM)
	rospy.init_node('talker', anonymous=True)
	rospy.spin()
	
def updatePWM(msg):
#Mappa värden från drive_parameters (-100,100) till (6554,13108)
#skulle kunna linj.int men vi vet att vi bara kommer att skicka -100, 0 och 100 til drive_parameters
#-100 = 6554
#100 = 13108
#0=9831
	vel=msg.velocity
	ang=msg.angle
	values=drive_values()	

	if vel == 100:
		values.pwm_drive = 13108-3014
	elif vel == -100:
		values.pwm_drive = 6554+2964
	else:
		values.pwm_drive = 9831

	if ang == 100:
		values.pwm_angle = 13108-1500
	elif ang == -100:
		values.pwm_angle = 6554+1500
	else:
		values.pwm_angle = 9831


	pub.publish(values)

if __name__ == '__main__':
	talker()
