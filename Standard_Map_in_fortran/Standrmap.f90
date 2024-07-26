	double precision, dimension(0:1000) :: q, p
	double precision, parameter :: k = 1.50, twopi = 8*atan(1.0)
	double precision :: a, b

	open(unit=1,file='trial2.dat',status='unknown')

	do j = 0, 100

	call random_number(a)
	call random_number(b)
     

	!q(0) = twopi*(a-0.5)
	!p(0) = ((-1.0)**int(2.0*c))*twopi*(b-0.5)
        q(0) = twopi*a;kap=0.0;
        delt=0;dt=0.01;
        p(0) = twopi*b
	print*,'initial value of q and p is ',q(0),p(0)
	do i = 0, 1000
	!q(i+1) = mod((q(i)+p(i)-(k/twopi)*sin(twopi*q(i))),1.0)
	!p(i+1) = mod((p(i)-(k/twopi)*sin(twopi*q(i))),1.0)
        !q(i+1) = abs(mod((q(i)+p(i)+k*sin(q(i))),twopi))
	!p(i+1) = abs(mod((p(i)+k*sin(q(i))),twopi))

	p(i+1) = abs(mod((p(i)+k*sin(q(i))+kap*sin(q(i))*sin(delt)),twopi))
	q(i+1) = abs(mod((q(i)+p(i+1)),twopi))
	
        delt=delt+dt
        
        print*,  delt

        if(mod(i,2)==0)then
	!write(1,*) abs(q(i+1))/twopi, abs(p(i+1))/twopi
	write(1,*) abs(q(i+1)), abs(p(i+1))
	end if 

	end do
		write(1,*) ''
	

	end do

	end
