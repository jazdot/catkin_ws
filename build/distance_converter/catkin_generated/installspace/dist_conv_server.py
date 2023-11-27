#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float32
from distance_converter.srv import DistanceConversion, DistanceConversionResponse

def convert_cm_to_mm(req):
    rospy.loginfo('Distance conversion process started')
    return DistanceConversionResponse(req.distance_in_cm*10)
    
def Begin():
    rospy.init_node('distance_conv_server', anonymous=False)
    rospy.Service('UnitConversion',DistanceConversion,convert_cm_to_mm)
    rospy.loginfo('server is operational!')
    rospy.spin()

if __name__ == '__main__':
    Begin()
