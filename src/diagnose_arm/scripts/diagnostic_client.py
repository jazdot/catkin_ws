#!/usr/bin/env python3

import sys
import rospy
from diagnose_arm.srv import MotorStatus, MotorStatusRequest

def Motor_check_client():
    rospy.init_node('Motor_client')

    print("Motor check in progress ...")

    try:
        dist1 = rospy.ServiceProxy('motor1_check', MotorStatus)
        resp1 = dist1()
        rospy.loginfo(resp1.message)
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        sys.exit(1)

    try:
        dist2 = rospy.ServiceProxy('motor2_check', MotorStatus)
        resp2 = dist2()
        rospy.loginfo(resp2.message)
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        sys.exit(1)

    try:
        dist3 = rospy.ServiceProxy('motor3_check', MotorStatus)
        resp3 = dist3()
        rospy.loginfo(resp3.message)
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        sys.exit(1)

    if ((resp1.message.find("OK") != -1) * (resp2.message.find("OK") != -1) * (resp3.message.find("OK") != -1)):
        rospy.loginfo("Joint Motor Check is PASSED")
    else:
        rospy.loginfo("Joint Motor Check is FAILED")

if __name__ == "__main__":
    rospy.loginfo("Diagnostic code running")
    Motor_check_client()
