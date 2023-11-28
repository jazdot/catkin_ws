#!/usr/bin/env python3

from diagnose_arm.srv import MotorStatus, MotorStatusResponse
import random
import rospy
   
def check_motor1_status(req):
   req.status = random.randint(0,1)
   if(req.status==1):
      return MotorStatusResponse("Motor 1 is OK")
   else:
      return MotorStatusResponse("Motor 1  is NOT OK")
   
def Motor_check_server():
   rospy.init_node('Motor1_server')
   s = rospy.Service('motor1_check', MotorStatus, check_motor1_status)
   rospy.loginfo("Motor 1 checking service started ")
   rospy.spin()
   
if __name__ == "__main__":
   Motor_check_server()