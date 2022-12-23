#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import Int16
global tmp
tmp = True
def talker():
    global tmp
    pub = rospy.Publisher('original', Int16, queue_size=10)
    # rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while tmp:
        # print "User's input is :"
        inputNum = raw_input()
        
        # print inputNum
        if inputNum == 0:
            break

        # hello_str = "User's input is %s" % inputNum
        # rospy.loginfo(hello_str)
        pub.publish(int(inputNum))
        rate.sleep()
        tmp = False
def callback(data):
    global tmp
    # rospy.loginfo(rospy.get_caller_id() + "Message from Arduino is  %s", data.data)
    print "Message from Arduino is  %d", data.data 
    tmp = True
def listener():
    rospy.Subscriber("chatter", Int16, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
if __name__ == '__main__':
    try:
        rospy.init_node('raspberry', anonymous=True)
        talker()
        listener()
    except rospy.ROSInterruptException:
        pass