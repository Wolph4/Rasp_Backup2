import rospy
from stdmsgs.msg import string,Float32,Int32

#Arduino¶}Ardu_Subber Node
Input = 0
rospy.init_node('Ardu_Subber',anonymous=True)


def callback(data)
  rospy.loginfo(rospy.get_caller_id() + "%d as input \n",data.data)

#Subscribe
def Subbing()
  #talker
  rospy.Subscriber('talker',Int32,callback)
  Input="%d",data.data
  rospy.spin()
  

  
  
if __name__ == '__main__':
  Subbing()
  