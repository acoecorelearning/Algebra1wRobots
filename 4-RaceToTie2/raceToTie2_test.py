# This work is licensed by James Town and ACOE Core Learning under a
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0
# International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

import linkbot   # loads library for the Linkbots

 
robot1 = linkbot.Linkbot('5KJQ')   #assigns the name robot1 to the first robot
robot2 = linkbot.Linkbot('THRD')   #assigns the name robot2 to the second robot


robot1.setJointSpeeds(100, 0, 100) #changes robot1's speed (degrees/second)
robot1.moveNB(360, 0, -360) #moves the robot some number of degrees

robot2.setJointSpeeds(200, 0, 200) #changes robot2's speed (degrees/second)
robot2.moveNB(720, 0, -720) #moves the robot some number of degrees

robot1.moveWait() #waits for moveNB to finish
robot2.moveWait() #waits for moveNB to finish
