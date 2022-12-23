import rospy

rospy.init_node('hello_python_node')

while not rospy.is_shutdown():
  #rospy.init_node('testing_python_node')
  rospy.loginfo('testing massages')
  rospy.sleep(1.5)