	#include<iostream>

	#include<cmath>

	#include <fstream>
	
	#include<cstdlib>

	using namespace std;

	int main()

	{

	int n,m,p,tt;

	float eps,t,Den,L,kx,ky,pi,eta,en,Tot_num_states;

	p=100;	

	ofstream first("NOS-vs-t.dat");//Files to write the data for variables 
	
	if(!first) {

	cerr << "Could not open output file " << endl;

	exit(1);
		  }

	first.setf(ios::scientific);                                  //Files to write the lyapunov exponents

	first.precision(4);

	pi=acos(-1.0);
	
	//t=0.80;//t1=1-t;t2=t

	eta=.001;//Infinitesimal imaginary part

	L=pow(2,16);//Length of the lattice

	for(tt=0;tt<100.0;tt++){

	t=tt/float(100);

	Tot_num_states=0.0;

	for(m=-2*p;m<=0;m++){

	Den=0.0;

	en=float(m)/float(p);

	for (n=1;n<=L;n++){

	kx  = -pi +(pi/float(L))*float(2*n-1);

	eps=-2.0*((1.0-t)*cos(kx)- t*cos(2.0*kx));

	Den=Den+eta/(pi*(pow(eta,2)+pow(en-eps,2)));
	
	} 

	Den=Den/float(L);
	
	Tot_num_states=Tot_num_states+Den;

	}

	first<<t<<"\t"<<Tot_num_states/float(p)<<endl;               //Write to file variables

	cout<<"the NOS is :"<<"\t\t"<<Tot_num_states/float(p)<<endl;

	}
	
        first.close();///Close first file

	}
