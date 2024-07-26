//Bifurcation Diagram for Logistic Map
#include <stdio.h>
#include <math.h>


#define randomize() srand ((unsigned) time (NULL))
FILE *output;  
int random_condition(void)
{
     int ran;
     ran =rand()%100;
     return ran;
} 

main()
{
int n,p;
double r,x0,xf;

output=fopen("BifurcationDiagram.dat", "w"); 
for(p=0;p<1000;p++){
  x0=.05;
  r=3+.01*random_condition();
 // printf("the initial value is %f\n",x0);
  printf("the r value is %f\n",r);

 for(n=0;n<1000;n++){
   xf=r*x0*(1-x0);
  // printf("the value of xn is %f\n",xf);
if(n>50){
   fprintf(output,"%d\t%f\t%f\n",n,r,xf);
}
   x0=xf;
                }

    fprintf(output,"\n");
    
                  }

fclose(output);
}
