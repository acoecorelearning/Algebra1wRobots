// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

#include <chplot.h>

CPlot plot;

double a,b,c,x,y;
double zero1,zero2,discriminant,h,k;

printf("Please enter a: ");
scanf("%lf",&a);
printf("Please enter b: ");
scanf("%lf",&b);
printf("Please enter c: ");
scanf("%lf",&c);
//printf("%.2lf",a);
discriminant=pow(b,2)-4*a*c;
zero1=((-b+pow(discriminant,.5))/(2*a));
zero2=((-b-pow(discriminant,.5))/(2*a));
printf ("The zeros are: %.2lf and %.2lf\n",zero1,zero2);
printf ("The discriminant of %.2lf",discriminant);
if (discriminant>0){
    printf(" means it has two real solutions\n");
}  else if (discriminant<0){
    printf(" means it has two complex solutions\n");
}  else { //discriminant = 0
    printf(" means it has one (repeated) real solution\n");
}
h=-b/(2*a);
k=a*pow(h,2)+b*h+c;
printf("The vertex is at (%.2lf,%.2lf)\n",h,k);
printf("The equation of the axis of symmetry is x = %.2lf\n",h);

plot.mathCoord();
plot.title("Parabola");
plot.label(PLOT_AXIS_X,"x value");
plot.label(PLOT_AXIS_Y,"y value");

for (x=-10; x<=10;x+=.1){
    plot.point(x,a*pow(x,2)+b*x+c);
}

plot.plotting();
