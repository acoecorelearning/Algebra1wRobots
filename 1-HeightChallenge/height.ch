// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <linkbot.h> //imports Linkbot library

CLinkbotI robot; //assigns the name robot to the Linkbot

robot.move(revolutions*360, 0, -revolutions*360); //moves the robot some 
						  //number of revolutions
