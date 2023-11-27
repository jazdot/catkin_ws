#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Temperature
import random
from std_msgs.msg import Int32

def temperature_sensor_node():
    rospy.init_node('temperature_sensor_node', anonymous=True)
    temperature_pub = rospy.Publisher('temperature_update', Temperature, queue_size=10)
    count_pub = rospy.Publisher('sequence_count', Int32, queue_size=10)
    rate = rospy.Rate(1.0)  # 1 Hz
    count=0

    while not rospy.is_shutdown():
        temperature_value = random.uniform(20.0, 35.0)  # Random float between 0.0 and 100.0

        temperature_msg = Temperature()
        temperature_msg.header.stamp = rospy.Time.now()
        temperature_msg.temperature = temperature_value
        temperature_msg.variance = 0.05  #variance value
        
        count= count+1

        rospy.loginfo(f"\nSequence No.: {int(count)}\nTime stamp: {rospy.get_time()}\nFrame id: \"Probe_01\"\nTemperature: {temperature_value:.2f}\nVariance: {temperature_msg.variance}")
        
        count_pub.publish(count)
        temperature_pub.publish(temperature_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        temperature_sensor_node()
    except rospy.ROSInterruptException:
        pass

