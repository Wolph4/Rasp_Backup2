#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import Int16
 
def talker():
    pub = rospy.Publisher('original', Int16, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    print "User's input is : "
    while not rospy.is_shutdown():
        inputNum = raw_input()
        if inputNum == 0:
            break
        # hello_str = "User's input is %s" % inputNum
        # rospy.loginfo(hello_str)
        pub.publish(int(inputNum))
        # rate.sleep(1)

if __name__ == '__main__':
    try:
        
        talker()
    except rospy.ROSInterruptException:
        pass