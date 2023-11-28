#!/usr/bin/env python3

from __future__ import print_function
from distance_converter.srv import motorStatus, motorStatusResponse
import random
import rospy
   
def check_motor1_status(req):
   req.status = random.randint(0,1)
   if(req.status==1):
      return motorStatusResponse(req.status,"Motor 1 OK")
   else:
      return motorStatusResponse(req.status,"Motor 1  NOT OK")
   
def Motor_check_server():
   rospy.init_node('Motor1_server')
   s = rospy.Service('motor1_check', motorStatus, check_motor1_status)
   print("Motor 1 checking service started ")
   rospy.spin()
   
if __name__ == "__main__":
   Motor_check_server()
