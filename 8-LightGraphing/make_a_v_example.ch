// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <linkbot.h> //imports Linkbot library

CLinkbotI robot; //assigns the name robot to the Linkbot

float maxX,minX, fudge;
float slope, angle, rotate, moveDeg, rotateBack;
#define M_PI 3.14159;
maxX=5.0;
minX=-5.0;
robot.setJointSpeeds(25,0,25);

//give you time to set up the camera
//sleep(5);

//starting at the origin
//for the graph of y=1*abs(x) #rotate 45o
// for the graph of y=3/2*abs(x) # rotate atan(3/2)
slope=3.0/2.0;
angle=atan(slope);
rotate=angle*180.0/M_PI;
printf(rotate,"\n");
fudge=10.0;
robot.move(-rotate,0,-rotate);
//"draw" a straight line until x=maxX
moveDeg=(maxX/cos(angle))*(360.0/11.0);
robot.move(moveDeg,0,-moveDeg);
//go back to origin
robot.move(-moveDeg,0,moveDeg);
//rotate around
rotateBack=180.0-2.0*rotate+fudge;
robot.move(-rotateBack,0,-rotateBack);
//"draw" a straight line until x=-5
robot.move(moveDeg,0,-moveDeg);


