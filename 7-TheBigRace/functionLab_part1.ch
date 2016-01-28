/* ---------------------------------------------------------- */
/*   Students, please do not edit anything in this document   */
/* ---------------------------------------------------------- */


#include <linkbot.h>   // loads linkbot library
#include <chplot.h>    // loads graphing library

CPlot plot; //starts a plot called plot
CLinkbotI lineRobot,quadRobot,expoRobot; //names three linkbots

double baseDegreesLine,baseDegreesQuad,baseDegreesExpo; //starting degrees of motors

int t,pointNumber; //time in seconds

double angle; //angle in degrees

double lineSpeed,quadSpeed,expoSpeed; //speed in degrees per second

double timePoints[7],linePoints[7],quadPoints[7],expoPoints[7];

lineRobot.connect(); //assigns first Linkbot
quadRobot.connect(); //assigns second Linkbot
expoRobot.connect(); //assigns third Linkbot

plot.mathCoord();
plot.title("Which robot would you pick in a race?");
plot.label(PLOT_AXIS_X, "Time (s)");
plot.label(PLOT_AXIS_Y, "Distance (degrees)");

lineRobot.setLEDColor("green"); //linear bot is green
quadRobot.setLEDColor("blue"); //quadratic bot is blue
expoRobot.setLEDColor("red"); //exponential bot is red

lineRobot.getJointAngles(baseDegreesLine,NaN,NaN); //read the current angle of the joint
quadRobot.getJointAngles(baseDegreesQuad,NaN,NaN); //read the current angle of the joint
expoRobot.getJointAngles(baseDegreesExpo,NaN,NaN); //read the current angle of the joint

lineRobot.setJointSpeeds(0,NaN,0); //0 degrees/second
quadRobot.setJointSpeeds(0,NaN,0); //0 degrees/second
expoRobot.setJointSpeeds(0,NaN,0); //0 degrees/second

lineRobot.moveForeverNB(); //move until stopped (ie speed=0)
quadRobot.moveForeverNB(); //move until stopped (ie speed=0)
expoRobot.moveForeverNB(); //move until stopped (ie speed=0)

for (t=0; t<6; t++){ //go from 0 to 5 seconds
    expoSpeed=2.2*pow(2,t); //exponential graphs accelerate exponentially
    quadSpeed=14*t; // quadratic graphs accelerate linearly
    lineSpeed=44; // linear bots don't accelerate
    expoRobot.setJointSpeeds(expoSpeed,NaN,-expoSpeed); //set joint speed
    quadRobot.setJointSpeeds(quadSpeed,NaN,-quadSpeed); //set joint speed
    lineRobot.setJointSpeeds(lineSpeed,NaN,-lineSpeed); //set joint speed
    printf ("time = %d seconds\n",t); //print the time
	pointNumber=t; //pointNumber is the same as the time
	timePoints[pointNumber]=t;                        //add next point to the list
	lineRobot.getJointAngleInstant(1,angle);          //get the new angle for linebot
	linePoints[pointNumber]=-1*baseDegreesLine+angle; //add next point to the list
	quadRobot.getJointAngleInstant(1,angle);          //get the new angle for quadbot
	quadPoints[pointNumber]=-1*baseDegreesQuad+angle; //add next point to the list
	expoRobot.getJointAngleInstant(1,angle);          //get the new angle for expobot
	expoPoints[pointNumber]=-1*baseDegreesExpo+angle; //add next point to the list
}

lineRobot.setJointSpeeds(0,NaN,0); //0 degrees/second
quadRobot.setJointSpeeds(0,NaN,0); //0 degrees/second
expoRobot.setJointSpeeds(0,NaN,0); //0 degrees/second


plot.data2DCurve(timePoints,linePoints,pointNumber+1); //graph 0 (t,linePoints)
plot.data2DCurve(timePoints,quadPoints,pointNumber+1); //graph 1 (t,quadPoints)
plot.data2DCurve(timePoints,expoPoints,pointNumber+1); //graph 2 (t,expoPoints)
plot.plotType(PLOT_PLOTTYPE_LINES, 0); //set plot type to lines
plot.lineType(0,1,1,"green"); //linear graph is green
plot.lineType(1,1,1,"blue");  //quadratic graph is blue
plot.lineType(2,1,1,"red");   //exponential graph is red
plot.plotting();


