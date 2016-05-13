#decay
import time
import linkbot
import random

robot = linkbot.Linkbot('GFMD')

input("Press enter to begin")
timeStart=time.time()
#timeCnt=0
robot.setLedColor(0,255,0)
decayed=False
while not decayed:
    time.sleep(1)
    #timeCnt+=1
    randomNumber=random.random()#gives number in the range [0,1)
    if randomNumber>.5**(1/19.29):#halflife is 19.29 seconds
        decayed=True
        robot.setLedColor(255,0,0)
        print (time.time()-timeStart)#time when decayed
        #print (timeCnt)
		#some fun extentions:
		#	bot could wiggle while it is radioactive
		#	bot could throw a marble "positron" when it decays
		#	bot could beep when it decays
        
