import linkbot
import time
import math
robot=linkbot.Linkbot('9736')

maxX=5
minX=-5
robot.setJointSpeeds(25,0,25)

#test rotation
##for degrees in range(0,90,10):
##    print (degrees)
##    robot.move(degrees,0,degrees)
##    time.sleep(5)
# robot.move(rotate,0,rotate) makes the robot rotate rotate degrees
time.sleep(5)
#starting at the origin
#graph of y=1*abs(x) #rotate 45o
#graph of y=3/2*abs(x) # rotate atan(3/2)
slope=1/5
angle=math.atan(slope)
rotate=math.degrees(angle)
fudge=10
robot.move(-rotate,0,-rotate)
#"draw" a straight line until x=5
moveDeg=(5/math.cos(angle))*(360/11)
robot.move(moveDeg,0,-moveDeg)
#go back to origin
robot.move(-moveDeg,0,moveDeg)
#rotate around
rotateBack=180-2*rotate+fudge
robot.move(-rotateBack,0,-rotateBack)
#"draw" a straight line until x=-5
robot.move(moveDeg,0,-moveDeg)


