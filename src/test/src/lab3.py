#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
import RPi.GPIO as GPIO
import time

def talker():
    pub = rospy.Publisher('lab3', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    # lightpin = 15
    touchpin_1 = 13
    touchpin_2 = 15
    finishpin = 7
    GPIO.setmode(GPIO.BOARD)
    # GPIO.setup(lightpin, GPIO.IN)
    GPIO.setup(touchpin_1, GPIO.IN)
    GPIO.setup(touchpin_2, GPIO.IN)
    GPIO.setup(finishpin, GPIO.IN)
    print "start"
    find_light = False
    moves = []
    b = ['forward'] * 25
    moves.extend(b)
    # b = ['left'] *4
    # moves.extend(b)
    # b = ['forward'] *4
    # moves.extend(b)


    endLight = False
    searchball = False
    getball1 = False
    count =0
    rightNum = input("startrospy:")
    while not rospy.is_shutdown():

        status = String()
        # light_val =  GPIO.input(lightpin)
        touchpin_val_R =  GPIO.input(touchpin_1)
        touchpin_val_L =  GPIO.input(touchpin_2)
        finishpin_val =  GPIO.input(finishpin)
        # pub_str ="forward"
        # nowtime =  datetime.now() 
        
        if(finishpin_val == 0) and  endLight == False:
            moves = ['forward'] *10
            if rightNum == 1 :
                b = ['right'] *2
                moves.extend(b)
            elif rightNum == 3 :
                b = ['left'] *2
                moves.extend(b)
            else:
                b = ['right'] *2
            b = ["stop"] 
            moves.extend(b)
            endLight = True
        # elif(light_val == 0):
        #     moves = []
        #     find_light = True
        # print("finishpin_val" , finishpin_val)
        # print("touchpin_val_L" , touchpin_val_L)
        # print("touchpin_val_R" , touchpin_val_R)
        if(touchpin_val_L == 0) or (touchpin_val_R == 0):
            touchtmp = True
        else:
            touchtmp = False
        if touchtmp == True:
            if searchball ==True:
                moves = ['crash']
            else:
                moves = ['forward'] *10
                # moves.extend(['clear'])
                b = ['go'] *16
                moves.extend(b)

                b = ['search'] *16
                moves.extend(b)
                moves.extend(['clearsearch'])
                b = ['backward'] *2
                moves.extend(b)

        #     # if(touchpin_val_L == 0) : print"Left Touch"
        #     # if(touchpin_val_R == 0) : print"Right Touch"
        #     # if nowtime >= R_start_time:
        #         # R_start_time = nowtime + timedelta(seconds=5)
        #     # moves = ['left'] *30
        #     # b = ['rightback'] *6
        #     # moves.extend(b)
        #     # b = ['right'] *6
        #     # moves.extend(b)
        #     # if searchball == False:
        #     moves = ['go'] *20
        #     moves.extend(['clear'])
        #     b = ['search'] *18
        #     moves.extend(b)
        #     moves.extend(['clearsearch'])
        #     b = ['backward'] *3
        #     moves.extend(b)
            # else:
            #     moves = ['searchball'] *20
            #     b = ['checkgetbeacon'] *4
            #     moves.extend(b)
        

        

        # if len(moves) ==0: 
        #     if searchball == False:
        #         moves = [] 
        #         # b = ['search'] *24
        #         # moves.extend(b)
        #         b = ['forward'] *30
        #         moves.extend(b)
            # else:
            #     moves = [] 
            #     # b = ['search'] *24
            #     # moves.extend(b)
            #     b = ['searchball'] *30
            #     moves.extend(b)
        if moves:
            pub_str = moves.pop()
        else:
            if searchball ==True:
                pub_str = "searchball"
                if touchtmp == True:
                    getball1  = True
                    pub_str = "crash"
            else:
                moves = ['go'] *20
                # moves.extend(['clear'])
                b = ['search'] *18
                moves.extend(b)
                moves.extend(['clearsearch'])
                b = ['backward'] *3
                moves.extend(b)

        print(pub_str)
        status.data = pub_str
        pub.publish(status)
        if endLight == True:
            searchball = True
        # if searchball == True:
        #     rospy.sleep(0.1)
        # else:
        # if getball1  == True:
        #     break
        rospy.sleep(0.25)
        # print moves
        count +=1
if __name__ == '__main__':
    try:
        
        talker()
    except rospy.ROSInterruptException:
        pass