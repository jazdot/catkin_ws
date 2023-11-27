#!/usr/bin/env python3

import rospy
from distance_converter.srv import DistanceConversion

def beginNode(x):
    rospy.wait_for_service('UnitConversion')
    try:
        convert = rospy.ServiceProxy('UnitConversion',DistanceConversion)
        response = convert(x)
        return response
    except rospy.ServiceException as e:
        rospy.loginfo('service exception %s'%e)

if __name__ == '__main__':
    rospy.init_node('client_unit_conversion')
    x= int(input("enter number: "))
    # if len(sys.argv) == 2:
    #     x = float(sys.argv[1])
    # else:
    #     print('%s [x y]' %sys.argv[0] )
    #     sys.exit(1)
    rospy.loginfo("requesting unit conversion for {} cm ".format(x))
    mm = beginNode(x)
    rospy.loginfo('{} cm is equal to {} mm'.format(x,mm))
