import rospy
from stdmsgs.msg import string,Float32,Int32

rospy.init_node('Rb_Subber',anonymous=True)

def callback(data)
  rospy.loginfo(rospy.get_caller_id() + "%d was heard",data.data)

def Rb_Listener()
  #Å¥¨útalker
  rospy.Subscriber('Ardu_final',Int32,callback)
  Output="%d",data.data
  rospy.spin()
  
if __name__ == '__main__':
  Rb_Listener()
  