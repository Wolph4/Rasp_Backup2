import rospy
from stdmsgs.msg import string

def callback(data)
  rospy.loginfo(rospy.get_caller_id() + "%s was heard",data.data)

def Listener()
  rospy.init_node('Listemer',anonymous=True)
  rospy.Subscriber('chatter',String,callback)
  rospy.spin()
  
if __name__ == '__main__':
  Listener()
  