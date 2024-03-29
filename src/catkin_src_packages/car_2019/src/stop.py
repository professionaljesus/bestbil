#!/usr/bin/env python

import rospy 
from std_msgs.msg import Bool
from car_2019.msg import pid_param
import curses

stdscr = curses.initscr()
curses.cbreak()
stdscr.keypad(1)
rospy.init_node('rt_com', anonymous=True)
eStop = rospy.Publisher('eStop', Bool, queue_size=10)
pid = rospy.Publisher('car_2019/pid', pid_param, queue_size=5)
stdscr.refresh()

key = ' '

def listener():
	global key
	while key != ord('q'):
		key = stdscr.getch()
		stdscr.refresh()
		msg = pid_param()
		msg.kp = 0
		msg.ki = 0
		msg.kd = 0
		msg.velocity = 0
	
		if key == ord('k'):
			eStop.publish(True)
	
		elif key == ord('g'):
			eStop.publish(False)
	
		# increase KP by 1
		elif key == ord('p'):
			msg.kp = 1
			pid.publish(msg)
	
		# decrease KP by 1
		elif key == ord('o'):
			msg.kp = -1
			pid.publish(msg)
	
		elif key == ord('d'):
			msg.kd = 0.01
			pid.publish(msg)
	
		elif key == ord('s'):
			msg.kd = -0.01
			pid.publish(msg)
	
		elif key == ord('v'):
			msg.velocity = 1
			pid.publish(msg)
	
		elif key == ord('c'):
			msg.velocity = -1
			pid.publish(msg)
	
		elif key == ord('i'):
			msg.ki = 0.05
			pid.publish(msg)
	
		elif key == ord('u'):
			msg.ki = -0.05
			pid.publish(msg)
			
	
	curses.endwin()

if __name__ == '__main__':
	print("Started RT_COM\n")
	listener()
