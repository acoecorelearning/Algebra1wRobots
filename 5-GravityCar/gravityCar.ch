// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <linkbot.h> //loads linkbot module

CLinkbotI robot; //assigns the name robot to the robot

robot.connect(); //connects the robot

robot.setJointSpeeds(speed1,NaN,speed1); //changes the robot's speed: degrees/second
robot.moveNB(x,NaN,-x);//it goes x degrees altogether
sleep(1); //sleeps for 1 second

robot.setJointSpeeds(speed2,NaN,speed2); //you should add your own comments
sleep(1); 

robot.moveWait(); //waits for moveNB to finish