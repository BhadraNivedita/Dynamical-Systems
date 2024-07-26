	#include<iostream>

	#include<cmath>

	#include <fstream>
	
	#include<cstdlib>

	using namespace std;

	int main()

	{

	int n,m,p,tt;

	float Ek,t,L,kx,pi;
	

	ofstream first("Ek-vs-k.dat");//Files to write the data for variables 
	
	if(!first) {

	cerr << "Could not open output file " << endl;

	exit(1);
		  }

	first.setf(ios::scientific);                                  //Files to write the lyapunov exponents

	first.precision(4);

	pi=acos(-1.0);
	

	L=pow(2,16);//Length of the lattice

	for(tt=0;tt<=10.0;tt++){

	t=tt/float(10);

	for (n=1;n<=L;n++){

	kx  = -pi +(pi/float(L))*float(2*n-1);

	Ek=-2.0*((1.0-t)*cos(kx)-t*cos(2.0*kx));
	
	
	
	first<<kx<<"\t"<<Ek<<endl;               //Write to file variables

	cout<<"the Ek is :"<<"\t\t"<<Ek<<endl;
	
	}
	
	first<<"\n";	  

	}
 
	
	
        first.close();///Close first file

	}
