// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <chplot.h>

CPlot plot;

double a,b,c,x,y;

// standard form: y=ax^2+bx+c
a=1;
b=1;
c=1;

for (x=-10; x<=10;x+=.1){ //counts through from x=-10 to x=10 by tenths
	y=a*pow(x,2)+b*x+c;
    plot.point(x,y); //plots the point we just calculated
}

plot.mathCoord(); //tells the computer what kind of graph it is
plot.title("Parabola"); //labels the graph
plot.label(PLOT_AXIS_X,"x value"); //labels the x axis
plot.label(PLOT_AXIS_Y,"y value"); //labels the y axis
plot.plotting(); //tells the computer to plot your points
