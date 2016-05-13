# This work is licensed by James Town and ACOE Core Learning under a
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0
# International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

from matplotlib import pyplot
import numpy

def quadFunction(a,b,c,x):
    return a*pow(x,2)+b*x+c

def quadFormula (a, b, c):
    return ((-b+pow((b**2-4*a*c),.5))/(2*a)), ((-b-(b**2-4*a*c)**.5)/(2*a))

def findDiscriminant (a,b,c):
    discrim=pow(b,2)-4*a*c
    if discrim > 0:
        return discrim,'means it has two real solutions'
    elif discrim < 0:
        return discrim, 'means it has two complex solutions'
    else: #discrim==0
        return discrim, 'means it has one (repeated) real solution'

def findVertex (a,b,c):
    h=-b/(2*a)
    k=quadFunction(a,b,c,h)
    return h,k

def getNumber(name): #asks user for a number until they give a valid number
    good=False
    while not good:
        try:
            value = float(input ("Enter value for "+name+": "))
            good=True
        except ValueError:
            print ("That wasn't a valid number, try again.")
    return value

a=getNumber('a')
b=getNumber('b')
c=getNumber('c')

zeros=quadFormula(a,b,c)
print ('The zeros are: {:.2f}'.format(zeros[0]),'and {:.2f}'.format(zeros[1]))
discrim,text=findDiscriminant(a,b,c)
print ('The discriminant of %.2f'%discrim,text)
vertex=findVertex(a,b,c)
print ('The vertex is at (%.2f'%vertex[0],', %.2f)'%vertex[1])
print ('The equation of the axis of symmetry is x = %.2f'%vertex[0])

xList=numpy.linspace(-10,10,100)

# or xList=numpy.arange(-10,10,.1) works too

# or you can count by ones, but the graph isn't as pretty
#xList=[]
#yList=[]
#for x in range(-10,11,1):
#    xList.append(x)
#    yList.append(a*pow(x,2)+b*x+c)

yList=quadFunction(a,b,c,xList)
pyplot.plot(xList,yList)
pyplot.xlabel('x value')
pyplot.ylabel('y value')
pyplot.title('Parabola')
pyplot.grid(True)
pyplot.show()
