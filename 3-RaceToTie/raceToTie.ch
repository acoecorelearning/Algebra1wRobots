#include <linkbot.h> //imports Linkbot library

CLinkbotI robot; //assigns the name robot to the Linkbot

robot.setJointSpeeds(speed, 0, speed); //changes the robot's speed
robot.move(some number of degrees, 0, -some number of degrees); //moves the robot some number of degrees