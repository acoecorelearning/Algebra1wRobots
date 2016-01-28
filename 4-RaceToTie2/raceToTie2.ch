                    /*  Race To Tie 2  */


#include <linkbot.h>                   //imports Linkbot library


CLinkbotI bot1;                        //assigns the name bot1 to the robot 
CLinkbotI bot2;                        //assigns the name bot2 to the robot

bot1.connect();                        //connects the bot1 robot
bot2.connect();                        //connects the bot2 robot

bot1.setJointSpeeds(speed,NaN,speed);                   //changes the bot1 robot's speed: speed degrees/second
bot1.moveNB(some number of degrees,NaN,-some number of degrees);       //moves the robot some number of degrees

bot2.setJointSpeeds(speed,NaN,speed);                   //changes the bot2 robot's speed: speed degrees/second
bot2.moveNB(some number of degrees,NaN,-some number of degrees);       //moves the robot some number of degrees

bot1.moveWait();                        //waits for moveNB to finish
bot2.moveWait();                        //waits for moveNB to finish
