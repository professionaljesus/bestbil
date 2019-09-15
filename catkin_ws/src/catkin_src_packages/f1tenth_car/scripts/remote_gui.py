#!/usr/bin/env python

import rospy
from Tkinter import *
from f1tenth_car.msg import mode
from f1tenth_controller_straight_path.msg import pid_param

# Create publisher that publishes messages to drive_pwm topic
pub_mode = rospy.Publisher('f1tenth_car/mode', mode, queue_size=10)

# Create publisher that publishes messages to drive_pwm topic
pub_pid = rospy.Publisher('f1tenth_controller_straight_path/pid_parameters', pid_param, queue_size=10)

# Create new node called talker
rospy.init_node('remote_gui', anonymous=True)


# Define callback for parameter change
def update_straight_path_param():
    try:
        kp = float(kp_entry.get())
        kp_entry.configure(background="white")
    except ValueError:
        kp_entry.configure(background="red")
        return

    try:
        ki = float(ki_entry.get())
        ki_entry.configure(background="white")
    except ValueError:
        ki_entry.configure(background="red")
        return

    try:
        kd = float(kd_entry.get())
        kd_entry.configure(background="white")
    except ValueError:
        kd_entry.configure(background="red")
        return

    try:
        velocity = float(velocity_entry.get())
        velocity_entry.configure(background="white")

        if velocity > 100 or velocity < -100:
            velocity_entry.configure(background="red")
            return
    except ValueError:
        velocity_entry.configure(background="red")
        return

    msg = pid_param()
    msg.kp = kp
    msg.ki = ki
    msg.kd = kd
    msg.velocity = velocity
    pub_pid.publish(msg)

    rospy.loginfo(rospy.get_caller_id() + ": Kp=%f, Ki=%f, Kd=%f, Velocity=%f" % (kp, ki, kd, velocity) + " sent")


# Define callback for mode switch
def mode_switch():
    msg = mode()
    msg.mode = selected_mode.get()
    pub_mode.publish(msg)

    rospy.loginfo(rospy.get_caller_id() + ": Set mode to %i" % (selected_mode.get()))


# Define number validation rule
def validation(S):
    if S in '0123456789.-+':
        return True
    else:
        return False


# Create root window
root = Tk()
root.title("F1/10 car remote control")

# Register custom validation rule
vcmd = (root.register(validation), '%S')

# Controller parameters, row 10-19
Label(text="Straight path controller", font="Verdana 10 bold").grid(row=10, column=0, columnspan=2, padx=10,
                                                                    pady=(10, 0))

Label(text="Kp:").grid(row=11, column=0, sticky=E, padx=(10, 0))
kp_entry = Entry(root, validate='key', vcmd=vcmd)
kp_entry.grid(row=11, column=1, sticky=W, padx=(0, 10))

Label(text="Ki:").grid(row=12, column=0, sticky=E, padx=(10, 0))
ki_entry = Entry(root, validate='key', vcmd=vcmd)
ki_entry.grid(row=12, column=1, sticky=W, padx=(0, 10))

Label(text="Kd:").grid(row=13, column=0, sticky=E, padx=(10, 0))
kd_entry = Entry(root, validate='key', vcmd=vcmd)
kd_entry.grid(row=13, column=1, sticky=W, padx=(0, 10))

Label(text="Velocity:").grid(row=14, column=0, sticky=E, padx=(10, 0))
velocity_entry = Entry(root, validate='key', vcmd=vcmd)
velocity_entry.grid(row=14, column=1, sticky=W, padx=(0, 10))

slogan = Button(root, text="Update controller parameters", command=update_straight_path_param)
slogan.grid(row=15, column=0, columnspan=2, padx=10)

# Mode switch, row 20-29
Label(text="Operating mode", font="Verdana 10 bold").grid(row=20, column=0, columnspan=2, padx=10,
                                                          pady=(20, 0))

selected_mode = IntVar()
selected_mode.set(0)  # initializing the choice, i.e. Python

# Define different operating modes
modes = [
    ("0: Off", 0),
    ("1: Straight path controller", 1),
    ("2: Keyboard controller", 2),
    ("3: xbox360 controller", 3),
]

# Create radio buttons for the different modes
for description, mode_nbr in modes:
    Radiobutton(root,
                text=description,
                indicatoron=0,
                variable=selected_mode,
                command=mode_switch,
                width=30,
                selectcolor="light green",
                background="pink",
                value=mode_nbr).grid(row=21 + mode_nbr, column=0, columnspan=2)

mainloop()
