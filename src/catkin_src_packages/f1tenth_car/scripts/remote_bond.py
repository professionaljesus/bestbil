#!/usr/bin/env python
import rospy
from bondpy import bondpy

BOND_ID = "465132168"

# Create ros node
rospy.init_node('remote_bond', anonymous=True)

# Receives id from A using a service or an action
bond = bondpy.Bond("f1tenth_car/bond", BOND_ID)
bond.set_heartbeat_timeout(1)
bond.set_heartbeat_period(0.25)
bond.start()

# Keep ros spinning
rospy.spin()

bond.break_bond()
