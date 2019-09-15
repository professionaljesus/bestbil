#!/usr/bin/env python

import rospy
from bondpy import bondpy
from std_msgs.msg import Bool

BOND_ID = "465132168"
TIMEOUT = 10

rospy.init_node('jetson_bond', anonymous=True)
em_pub = rospy.Publisher('eStop', Bool, queue_size=10)

# Sends id to B using an action or a service
bond = bondpy.Bond("f1tenth_car/bond", BOND_ID)
bond.set_heartbeat_timeout(1)
bond.set_heartbeat_period(0.25)
bond.start()
if not bond.wait_until_formed(rospy.Duration(TIMEOUT)):
    raise Exception('Bond could not be formed')

# Bond has been established
rospy.loginfo(rospy.get_caller_id() + ": Bond to remote system has been established")

# Do nothing until bond is broken
bond.wait_until_broken()
rospy.loginfo(rospy.get_caller_id() + ": Bond to remote system has been lost")
em_pub.publish(True)

# Keep ros spinning
rospy.spin()
