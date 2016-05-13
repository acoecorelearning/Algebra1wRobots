// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <linkbot.h> //loads linkbot library

CLinkbotI robot; //assigns the name robot to the robot

int speed;

robot.connect(); //connects the robot

robot.setJointSpeeds(0,NaN,0); //changes the robot's speed: degrees/second
robot.moveNB(7500,NaN,-7500); //it go 7500 degrees

for (speed=200;speed<300;speed+=10) {
	robot.setJointSpeeds(speed,NaN,speed); //you should add your own comments
	printf("%d\n",speed);
	sleep(3); //sleeps for 3 seconds
	}


robot.moveWait(); //waits for moveNB to finish
