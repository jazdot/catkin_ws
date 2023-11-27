#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Temperature
from std_msgs.msg import Int32

def count_callback(data_count):
    rospy.loginfo(f"\nSequence No.: {data_count.data}\nTime stamp: {rospy.get_time()}")

def temperature_callback(temperature_msg):
    rospy.loginfo(f"\nTemperature: {temperature_msg.temperature:.2f} with variance: {temperature_msg.variance:.2f}")

def temperature_subscriber():
    rospy.init_node('control_unit_01', anonymous=True)
    rospy.Subscriber('sequence_count', Int32, count_callback)
    rospy.Subscriber('temperature_update', Temperature, temperature_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        temperature_subscriber()
    except rospy.ROSInterruptException:
        pass
