import rospy
from stdmsgs.msg import string,Float32,Int32

#Arduino¶}Ardu_Subber Node
Output = 0
rospy.init_node('Ardu_Subber',anonymous=True)

def callback(data)
  rospy.loginfo(rospy.get_caller_id() + "%d was heard",data.data)

def Listener()
  #Å¥¨útalker
  rospy.Subscriber('talker',Int32,callback)
  Output="%d",data.data
  rospy.spin()
  
  
pub = rospy.Publisher('Input', Float32, queue_size=10)
  
if __name__ == '__main__':
  Listener()
  