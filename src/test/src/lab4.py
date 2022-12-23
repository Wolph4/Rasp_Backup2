#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
import RPi.GPIO as GPIO

def talker():
    pub = rospy.Publisher('lab3', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    lightpin = 15
    touchpin_1 = 13
    touchpin_2 = 11
    finishpin = 7
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(lightpin, GPIO.IN)
    GPIO.setup(touchpin_1, GPIO.IN)
    GPIO.setup(touchpin_2, GPIO.IN)
    GPIO.setup(finishpin, GPIO.IN)
    print "start"
    find_light = False
    moves = []
    end = False
    count =0
    while not rospy.is_shutdown():

        status = String()
        light_val =  GPIO.input(lightpin)
        touchpin_val_R =  GPIO.input(touchpin_1)
        touchpin_val_L =  GPIO.input(touchpin_2)
        finishpin_val =  GPIO.input(finishpin)
        # pub_str ="forward"
        # nowtime =  datetime.now() 
        
        if(finishpin_val == 0):
            moves =["stop"]
            end = True
        # elif(light_val == 0):
        #     moves = []
        #     find_light = True
        if(touchpin_val_L == 0):
            # if nowtime >= R_start_time:
                # R_start_time = nowtime + timedelta(seconds=5)
            # moves = ['left'] *30
            # b = ['rightback'] *6
            # moves.extend(b)
            # b = ['right'] *6
            # moves.extend(b)
            moves = ['go'] *20
            moves.extend(['clear'])
            b = ['search'] *18
            moves.extend(b)
            moves.extend(['clearsearch'])
            b = ['backward'] *4
            moves.extend(b)
        elif(touchpin_val_R == 0):
            # if nowtime >= L_start_time:
            # moves = ['left','left','left','rightback','rightback','rightback','right','right','right','backward','backward','backward']
            

            # moves = ['right'] *30
            # b = ['leftback'] *6
            # moves.extend(b)
            # b = ['left'] *6
            # moves.extend(b)
            moves = ['go'] *20
            moves.extend(['clear'])
            b = ['search'] *18
            moves.extend(b)
            moves.extend(['clearsearch'])
            b = ['backward'] *4
            moves.extend(b)
                # L_start_time = nowtime + timedelta(seconds=5)
        # if find_light  and  light_val == 1:
        #     moves = ['left'] *6
        #     b = ['rightback'] *6
        #     moves.extend(b)
        #     b = ['right'] *6
        #     moves.extend(b)
        #     b = ['backward'] *3
        #     moves.extend(b)
        #     find_light = False
        

        if len(moves) ==0: 
            moves = [] 
            # b = ['search'] *24
            # moves.extend(b)#!/usr/bin/env python
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
            b = ['forward'] *30
            moves.extend(b)
        if moves:
            pub_str = moves.pop()
        else:
            pub_str = "forward" if end == False else "stop"
        if end == True:
            pub_str = "stop" 
        if count %500 == 0:
            pub_str = "init" 
        # pub_str ="stop"
            
        # tmparr=[light_val,touchpin_val_L,touchpin_val_R,finishpin_val]
        # print tmparr
        status.data = pub_str
        pub.publish(status)
        if end == True:
            break
        rospy.sleep(0.25)
        # print moves
        count +=1

if __name__ == '__main__':
    try:
        
        talker()
    except rospy.ROSInterruptException:
        pass