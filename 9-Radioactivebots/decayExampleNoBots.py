#decay
import time
import linkbot
import random

#robot = linkbot.Linkbot('GFMD')
halfList=20*[0]
remainingList=20*[0]
percent=.5**(1/19.29)#halflife is 19.29 seconds
print (percent)
#robot.setLedColor(0,255,0)
for y in range(1000):
    halfList=20*[0]
    for x in range(100):
        decayed=False
        timer=0
        while not decayed:
            #time.sleep(1)
            timer+=1
            randomNumber=random.random()#gives number in the range [0,1)
            if randomNumber>=percent:#if greater than percent it decays
                decayed=True
                #print(timer)
                index=int(timer/19.29)
                halfList[index]+=1
                #robot.setLedColor(255,0,0)
    currentNum=100
    for index,isotopesLost in enumerate(halfList):
        remainingList[index]+=currentNum
        #print (index*20,currentNum)
        currentNum-=isotopesLost
#print(halfList)
for index,remaining in enumerate(remainingList):
    print(index*20,remaining/1000)
