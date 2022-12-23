#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import Int16
from std_msgs.msg import Int16MultiArray
 
def talker():
    pub = rospy.Publisher('lab2', Int16MultiArray, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():

        speed_arr = Int16MultiArray()
        rightNum = input("User's right is : ")
        leftNum = input("User's left is : ")

        speed_arr.data = [int(rightNum),int(leftNum)]
        
        # hello_str = "User's input is %s" % inputNum
        # rospy.loginfo(hello_str)
        pub.publish(speed_arr)
        rospy.sleep(1) 

if __name__ == '__main__':
    try:
        
        talker()
    except rospy.ROSInterruptException:
        pass