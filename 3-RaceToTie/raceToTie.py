import linkbot   # loads 'linkbot' module
 
robotID = input('Enter Linkbot ID: ')  # prompts user for a Linkbot ID and 
                                       # stores the result in a variable called
                                       # "robotID"
robot = linkbot.Linkbot(robotID)   # Gets a handle to the robot with the serial
                                   # ID stored in "robotID"   

robot.setJointSpeeds(speed, 0, speed) #changes the robot's speed
robot.move(some number of degrees, 0, -some number of degrees) #moves the robot some number of degrees