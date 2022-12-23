#!/usr/bin/env python
import rospy
from std_msgs.msg import Int16
 
def callback(data):
    # rospy.loginfo(rospy.get_caller_id() + "Message from Arduino is  %s", data.data)
    print "Message from Arduino is  %d\nUser's input is :" % data.data
    # print "User's input is :"
def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("chatter", Int16, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()