	#include<iostream>

	#include<cmath>

	#include <fstream>
	
	#include<cstdlib>

	using namespace std;

	int main()

	{

	int n,m,p;

	float eps,t,Den,L,kx,ky,pi,eta,en,tt;

	p=100;	

	ofstream first("DOS-vs-E.dat");//Files to write the data for variables 
	
	if(!first) {

	cerr << "Could not open output file " << endl;

	exit(1);
		  }

	first.setf(ios::scientific);                                  //Files to write the lyapunov exponents

	first.precision(4);

	pi=acos(-1.0);
	
	eta=.001;//Infinitesimal imaginary part

	L=pow(2,16);//Length of the lattice

	for(tt=0;tt<=10;tt++){

	t=tt/float(10);

	for(m=-8*p;m<8.0*p;m++){

	Den=0.0;

	en=float(m)/float(p);

	for (n=1;n<=L;n++){

	kx  = -pi +(pi/float(L))*float(2*n-1);

	//ky = -pi +(pi/float(L))*float(2*n-1);

	eps=-2.0*(-(1.0-t)*cos(kx)+t*cos(2.0*kx));

	//eps=-2.0*t*cos(kx)-2.0*t*cos(ky);

	Den=Den+eta/(pi*(pow(eta,2)+pow(en-eps,2)));
	
	}

	first<<en<<"\t"<<Den/float(L)<<endl;               //Write to file variables

	}

	cout<<"value of t is :"<<"\t"<<t<<endl;

 	first<<"\n";

	}
        first.close();///Close first file

	}
