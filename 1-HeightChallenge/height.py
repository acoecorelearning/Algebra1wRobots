# This work is licensed by James Town and ACOE Core Learning under a
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0
# International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

import linkbot   # loads library for the Linkbots
 
robotID = input('Enter Linkbot ID: ')  # prompts user for the ID for their Linkbot 
                                       # and saves the result in a variable called
                                       # "robotID" - fyi: case doesn't matter
                                       
robot = linkbot.Linkbot(robotID)   # Assigns the name 'robot' to the given robotID

robot.move(some number of degrees, 0, -some number of degrees) #moves the robot some
															   #number of degrees
