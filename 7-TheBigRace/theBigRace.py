import linkbot   # loads 'linkbot' module
import time      # loads 'time' module
 
robotID = input('Enter Linkbot ID: ')  # prompts user for a Linkbot ID and 
                                       # stores the result in a variable called
                                       # "robotID"
robot = linkbot.Linkbot(robotID)   # Gets a handle to the robot with the serial
                                   # ID stored in "robotID"   

robot.setJointSpeeds(10, 0, 10) # changes the robot's speed: degrees/second
                                # for the race every car starts at 10 degrees/second
robot.moveContinuous(1, 0, -1) # 1 means go, 0 means stop
time.sleep(1) # sleeps for 1 second
robot.setJointSpeeds(speed, 0, speed) # you should add your own comments
time.sleep(1)
robot.moveContinuous(0,0,0)
