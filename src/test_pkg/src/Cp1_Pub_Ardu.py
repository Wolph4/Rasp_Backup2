# -*- coding: utf-8 -*-
import rospy
from std_msgs.msg import String,Float32,Int32

rospy.init_nide('Ardu_Pubber',anonymous=True)
Za_Numba = 0

#Publish¥Î
def Pubbing()
  #publish Result
  rospy.init_nide('Ardu_Pubber',anonymous=True)
  
  Ardu_Publish = rospy.Publisher('Result',Int32,queue_size=10)
  
  rate = rospy.Rate(10) 
  
    while not rospy.is_shutdown():
  
    Za_Numba = Iutput * 2
  
    Ardu_Publish(Za_Numba)


if __name__ == '__main__':
    try:
        Pubbing()
    except rospy.ROSInterruptException:
        pass