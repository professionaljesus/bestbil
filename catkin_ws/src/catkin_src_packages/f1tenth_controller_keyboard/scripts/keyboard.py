#!/usr/bin/env python

import rospy
from f1tenth_car.msg import drive_param
import curses

# Define saturation limits for velocity and steering angle
MAX_VELOCITY = 100
MIN_VELOCITY = -100
MAX_ANGLE = 100
MIN_ANGLE = -100


# Saturate given value to between given limits
def saturate(value, min_value, max_value):
    if value > max_value:
        value = max_value
    if value < min_value:
        value = min_value

    return value


# Define increment size
VELOCITY_INCREMENT = 0.1
STEERING_INCREMENT = 1

# Define variables for forward and steering control signals
forward = 0
left = 0

# Initialize ncurses
stdscr = curses.initscr()
curses.cbreak()
stdscr.keypad(1)

# Create new node named keyboard_talker
rospy.init_node('keyboard', anonymous=True)

# Create publisher that publishes messages to drive_parameters topic
pub = rospy.Publisher('f1tenth_controller_keyboard/output', drive_param, queue_size=10)

stdscr.refresh()

key = ''
while key != ord('q'):

    # Get which key was pressed
    key = stdscr.getch()
    stdscr.refresh()

    if key == curses.KEY_UP:
        forward += VELOCITY_INCREMENT

    elif key == curses.KEY_DOWN:
        forward -= VELOCITY_INCREMENT

    if key == curses.KEY_LEFT:
        left += STEERING_INCREMENT

    elif key == curses.KEY_RIGHT:
        left -= STEERING_INCREMENT

    elif key == curses.KEY_DC:
        # This key will center the steer and throttle
        forward = 0
        left = 0

    # Saturate control signal
    forward = saturate(forward, MIN_VELOCITY, MAX_VELOCITY)
    left = saturate(left, MIN_ANGLE, MAX_ANGLE)

    # Create message
    msg = drive_param()
    msg.velocity = forward
    msg.angle = left

    # Publish message
    pub.publish(msg)

# Close curses when q key has been presed
curses.endwin()
