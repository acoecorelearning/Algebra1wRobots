# This work is licensed by James Town and ACOE Core Learning under a
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0
# International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

import linkbot   # loads library for the Linkbots

 
robot1 = linkbot.Linkbot('ABCD')   #assigns the name robot1 to the first robot
robot2 = linkbot.Linkbot('1234')   #assigns the name robot2 to the second robot


robot1.setJointSpeeds(speed, 0, speed) #changes robot1's speed (degrees/second)
robot1.moveNB(some number of degrees, 0, -some number of degrees) #moves the robot some number of degrees

robot2.setJointSpeeds(speed, 0, speed) #changes robot2's speed (degrees/second)
robot2.moveNB(some number of degrees, 0, -some number of degrees) #moves the robot some number of degrees

robot1.moveWait() #waits for moveNB to finish
robot2.moveWait() #waits for moveNB to finish