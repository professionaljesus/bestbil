#!/usr/bin/env python

import rospy
from race.msg import drive_param # import the custom message
import curses
forward = 0;
left = 0;

stdscr = curses.initscr()
curses.cbreak()
stdscr.keypad(1)
rospy.init_node('keyboard_talker', anonymous=True)
pub = rospy.Publisher('drive_parameters', drive_param, queue_size=10)
stdscr.refresh()

key = ''
while key != ord('q'):
	key = stdscr.getch()
	stdscr.refresh()
        

        # fill in the conditions to increment/decrement throttle/steer

	if key == curses.KEY_UP:
            forward = forward + 100        
	elif key == curses.KEY_DOWN:
            forward = forward - 100 
	if key == curses.KEY_LEFT:
            left = left - 100
	elif key == curses.KEY_RIGHT:
            left = left + 100
        elif key == curses.KEY_ENTER:
            # this key will center the steer and throttle
            forward = 0
            left = 0	
	msg = drive_param()
	msg.velocity = forward
	msg.angle = left
	pub.publish(msg)

rses.endwin()
