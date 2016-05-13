# This work is licensed by James Town and ACOE Core Learning under a
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0
# International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

import linkbot   # loads library for linkbots
import time      # loads library for time

robotID = input('Enter Linkbot ID: ')  # prompts user for the ID for their Linkbot 
                                       # and saves the result in a variable called
                                       # "robotID" - fyi: case doesn't matter

robot = linkbot.Linkbot(robotID)   # Assigns the name 'robot' to the given robotID 

robot.setJointSpeeds(0, 0, 0) # changes the robot's speed: degrees/second
robot.moveContinuous(1, 0, -1) # 1 means go, 0 means stop

for speed in range(200,300,10): # start at 200 go to 300 and count by 10s 
    robot.setJointSpeeds(speed, 0, speed) #sets the joint speed
    print (speed) #prints the current speed
    time.sleep(3) #goes that speed for 3 seconds

robot.moveContinuous(0,0,0) # stops bots

#Example plan:
#1. every one second go up 10 from 200 to 300 and record
#2. every one second go up five degrees from 20 before ^ to 20 after
#3. every one second go up 1 degree from 10 before ^ to 10 after
#4. every three seconds go up 1 degree from 5 before ^ to 5 after
#5. do #4 a couple times until found max speed

#Example data:
#ID   max speed
#gg3r 232
#sjk3 229
#5kjq 213
#vlvf 232

