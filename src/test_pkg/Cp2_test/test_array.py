#!/usr/bin/env python
# license removed for brevity

import rospy
from std_msgs.msg import Int16,Int16MultiArray
 
def talker():

    PWMs = []
    
    while True:
        print ("Input values for the left wheel and the right wheel: "),
        for i in range(2):
            PWMs_Num = int16(input())
            if(PWMs_Num<-255 or PWMs_Num > 255):
                print("Value out of bound")
                break;
                
            else: PWMs.append(PWMs_Num)
        
        pub.publish(PWMs)
        print("Values for the left wheel and the right wheel are:"),
        print(*PWMs, sep = ", ")
        
        
    
        

if __name__ == '__main__':
        talker()