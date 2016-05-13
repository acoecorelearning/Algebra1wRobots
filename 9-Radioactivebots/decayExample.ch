// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <linkbot.h> //imports Linkbot library

CLinkbotI robot; //assigns the name robot to the Linkbot

int decayed; //1=decayed 0=not decayed
int timeCnt;
double randomNumber;
char fake;

printf("Press enter to continue:");
scanf("%c", &fake);

robot.setLEDColor("green");
decayed=0;
timeCnt=0;
while (decayed==0){
    sleep(1);
    timeCnt+=1;
    randomNumber=randdouble(0,1);//gives number in the range [0,1)
    if (randomNumber>pow(.5,(1/19.29))){//halflife is 19.29 seconds
        decayed=1;
        robot.setLEDColor("red");
        printf (timeCnt);
        printf ("\n");
		//some fun extentions:
		//	bot could wiggle while it is radioactive
		//	bot could throw a marble "positron" when it decays
		//	bot could beep when it decays
    }
}
