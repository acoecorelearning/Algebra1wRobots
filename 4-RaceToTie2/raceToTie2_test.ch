                    /*  Race To Tie 2  */


#include <linkbot.h>                   //imports Linkbot library


CLinkbotI bot1;                        //assigns the name bot1 to the robot 
CLinkbotI bot2;                        //assigns the name bot2 to the robot

bot1.connect();                        //connects the bot1 robot
bot2.connect();                        //connects the bot2 robot

bot1.setJointSpeeds(100,NaN,100);                   //changes the bot1 robot's speed: speed degrees/second
bot1.moveNB(300,NaN,-300);       //moves the robot some number of degrees

bot2.setJointSpeeds(33,NaN,33);                   //changes the bot2 robot's speed: speed degrees/second
bot2.moveNB(100,NaN,-100);       //moves the robot some number of degrees

bot1.moveWait();                        //waits for moveNB to finish
bot2.moveWait();                        //waits for moveNB to finish
