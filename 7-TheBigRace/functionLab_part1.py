#######################################################################
#       Students, please do not edit anything in this document        #
#######################################################################

import linkbot   # loads 'linkbot' module
import time
from matplotlib import pyplot

lineID = input("Enter Linear Linkbot's ID: ")     # prompts user for a Linkbot ID
quadID = input("Enter Quadratic Linkbot's ID: ")  # prompts user for a Linkbot ID
expoID = input("Enter Exponential Linkot's ID: ") # prompts user for a Linkbot ID

lineRobot = linkbot.Linkbot(lineID) #assigns Linkbot
quadRobot = linkbot.Linkbot(quadID) #assigns Linkbot
expoRobot = linkbot.Linkbot(expoID) #assigns Linkbot

lineRobot.setLedColor(0, 255, 0) #linear bot is green
quadRobot.setLedColor(0, 0, 255) #quadratic bot is blue
expoRobot.setLedColor(255, 0, 0) #exponential bot is red

botList=[expoRobot,quadRobot,lineRobot] #put the robots in a list

def plotThreeSets(xList,yList1,yList2,yList3,xLabel='',yLabel='',graph1='',graph2='',graph3='',title=''):
    pyplot.plot(xList,yList1,'ro', label=graph1)
    pyplot.plot(xList,yList2,'gs', label=graph2)
    pyplot.plot(xList,yList3,'b^', label=graph3)
    pyplot.axis([0,max(xList)+1,0,max(max(yList1),max(yList2),max(yList3))+100]) 
    pyplot.xlabel(xLabel)
    pyplot.ylabel(yLabel)
    pyplot.title(title)
    pyplot.grid(True)
    pyplot.legend(loc='upper left', shadow=True, fontsize='x-large')
    pyplot.show()
    return

baseDegreesLine=lineRobot.getJointAngles()[0] #read the current angle of the joint
baseDegreesQuad=quadRobot.getJointAngles()[0] #read the current angle of the joint
baseDegreesExpo=expoRobot.getJointAngles()[0] #read the current angle of the joint
expoList=[0] #initialize the list of points
quadList=[0] #initialize the list of points
lineList=[0] #initialize the list of points
tList=[0] #initialize the list of seconds

for bot in botList:#initialize all bots
    bot.setJointSpeeds(0,0,0) #0 degrees/second
    bot.moveContinuous(1,0,-1) #1 means go, 0 means stop, 2 means?

for t in range(1,7): #go from 1 to 7 seconds (really 0-6)
    expoRobot.setJointSpeeds(1.05*2**t,0,1.05*2**t) #set joint speed
    quadRobot.setJointSpeeds(10*t,0,10*t) #set joint speed
    lineRobot.setJointSpeeds(44,0,44) #set joint speed
    print (t) #print the time
    for delay in range(4): 
        time.sleep(.25) #sleep for a quarter second
        expoList.append(-1*baseDegreesExpo+expoRobot.getJointAngles()[0]) #add points to the list
        quadList.append(-1*baseDegreesQuad+quadRobot.getJointAngles()[0]) #add points to the list
        lineList.append(-1*baseDegreesLine+lineRobot.getJointAngles()[0]) #add points to the list
        tList.append(t+delay*.25-.75) #add time to the list
        
for bot in botList: #stop all bots
    bot.moveContinuous(0,0,0)

plotThreeSets(tList,expoList,quadList,lineList,        #plot all three graphs
              'Time (s)','Distance (degrees)',         #label the axis
              'exponential','quadratic','linear',      #label the graphs
              'Which robot would you pick in a race?') #label the plot
