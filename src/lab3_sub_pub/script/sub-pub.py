#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def main_node():
    # Initialize the ROS node with a unique name (anonymous=True).
    rospy.init_node('CET', anonymous=False)

    # Create a publisher that publishes messages of type Int32 on the "custom_numbers" topic.
    pub = rospy.Publisher('Hello_KTU', String, queue_size=10)

    # Create a subscriber that listens to the "custom_numbers" topic.
    rospy.Subscriber('Hello_CET', String, callback)

    # Set the publishing rate (in Hz).
    rate = rospy.Rate(1)  # 1 Hz (1 message per second)

    while not rospy.is_shutdown():
        # Create a String message and set the data field with the desired string.
        hello_str = String()
        hello_str.data = "M1RAA_2023 says Hello KTU"
        
        # Publish the String message.
        pub.publish(hello_str)

        rospy.loginfo("Published: %s", hello_str.data)
        rate.sleep()

def callback(data):
    rospy.loginfo("%s", data.data)

if __name__ == '__main__':
    try:
        main_node()
    except rospy.ROSInterruptException:
        pass

