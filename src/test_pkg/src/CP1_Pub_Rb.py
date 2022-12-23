
import rospy
from std_msgs.msg import String,Float32,Int32

def Rb_publish():
    #Input << 
    pub = rospy.Publisher('Input', Float32, queue_size=10)
    
    #talker
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    
    while not rospy.is_shutdown():
        #&publish
        
        #Get Num  become Get_num
        Get_num = raw_input('Input: \n')
        Get_num = int(float(Get_num))
        
        #output Get_num
        Input_Num = ("%d" %Get_num)
        
        rospy.loginfo(Get_num)
        pub.publish(Input_num)

if __name__ == '__main__':
    try:
        Rb_publish()
    except rospy.ROSInterruptException:
        pass