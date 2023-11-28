#!/usr/bin/env python3

from diagnose_arm.srv import MotorStatus, MotorStatusResponse
import random
import rospy
   
def check_motor3_status(req):
   req.status = random.randint(0,1)
   if(req.status==1):
      return MotorStatusResponse("Motor 3 is OK")
   else:
      return MotorStatusResponse("Motor 3  is NOT OK")

def Motor_check_server():
   rospy.init_node('Motor3_server')
   s = rospy.Service('motor3_check', MotorStatus, check_motor3_status)
   rospy.loginfo("Motor 3 checking service started ")
   rospy.spin()
   
if __name__ == "__main__":
   Motor_check_server()
