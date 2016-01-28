# This work is licensed by James Town and ACOE Core Learning under a
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0
# International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

from matplotlib import pyplot
import numpy

# standard form y=ax^2+bx+c
a=1
b=1
c=1

xList=numpy.linspace(-10,10,100) #makes a list of x values
yList=a*xList**2+b*xList+c #creates y values from the list of x values
pyplot.plot(xList,yList) #plots all points
pyplot.xlabel('x value') #labels x axis
pyplot.ylabel('y value') #labels y axis
pyplot.title('Parabola') #labels graph
pyplot.grid(True) #shows grid
pyplot.show() #tells computer to show the graph on the screen
