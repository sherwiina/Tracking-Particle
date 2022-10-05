	program trackingParticleSherWIN
	pi = acos(-1.)
	! enter

	y0 = -1
	x0 = 0
	tet0 = - pi/6.
	v = 10
	t = 0.01
	tt = 0
	tetz = 1
	jahat = +1
	x = x0 + v*t*cos(tet0)
	y = y0 + v*t*sin(tet0)
	print*,x,y
	pause
	!enter


	do while (tt<=10)
	
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON B
	if (x>=2) then
	x0 = 2
	x  = 2
	print*,x,y,"        BEEP  B"
	pause
		if (tetz == 1) then

	    tet0 = (pi/2.) - tet0
		endif
		if (tetz== 2) then
		
		tet0 = tet0
		endif

						if(y>y0) then
						jahat = +2
						endif
						if (y<y0) then 
						jahat = -2
						endif
	tetz = 2
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON B


	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON C

	if (y>=1) then
	y = 1
	y0= 1
	print*,x,y,"          BEEP   C"
	pause
		 	  if (tetz == 2) then

			  tet0 = (pi/2.) - tet0
			  endif
		      if (tetz == 1) then
		
		      tet0 = tet0
		      endif
									if (x>x0) then
									jahat = +3
									endif
									if (x<x0) then
									jahat = -3
									endif	

	  
	tetz = 1
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON C

	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON D

	if (x<=-2) then
	x = -2
	x0= -2
	print*,x,y,"          BEEP		D"
	pause
		 	  if (tetz == 1) then

			  tet0 = (pi/2.) - tet0
			  endif
		      if (tetz == 2) then
		
		      tet0 = tet0
		      endif
									if (y>y0) then
									jahat = +4
									endif
									if (y0>y) then
									jahat = -4
									endif	

	  
	tetz = 2
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON D



	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON A

	if (y<=-1) then
	y = -1
	y0= -1
	print*,x,y,"          BEEP		A"
	pause
		 	  if (tetz == 2) then

			  tet0 = (pi/2.) - tet0
			  endif
		      if (tetz == 1) then
		
		      tet0 = tet0
		      endif
									if (x>x0) then
									jahat = +1
									endif
									if (x0>x) then
									jahat = -1
									endif	

	  
	tetz = 1
	endif
	!!!!!!!!!!!!!!!!!!BARKHORDE BA SOTON A





	! HARKAT AZ C
	if (jahat == +3) then
	x0 = x
	y0 = y
	call Movec1 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	pause
	tt = tt + t
	endif
	if (jahat == -3) then
	x0 = x
	y0 = y
	call MoveC2 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	pause
	tt = tt + t
	endif
	! Harkat AZ C
 

	
     
     
     
      ! HARKAT AZ B
	if (jahat == +2) then
	x0 = x
	y0 = y
	call MoveB1 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	pause
	tt = tt + t
	endif
	if (jahat == -2) then
	x0 = x
	y0 = y
	call MoveB2 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	pause
	tt = tt + t
	endif
	! Harkat AZ B





	!Harkat AZ A
	if (jahat == +1) then

	x0 = x
	y0 = y
	call MoveA1 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	
	tt = t + tt
	pause
	endif

	if (jahat == -1) then

	x0 = x
	y0 = y
	call MoveA2 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	pause
	tt = t + tt
	endif
	
     
      !Harkat AZ A

	
       !Harkat AZ D
	if (jahat == +4) then

	x0 = x
	y0 = y
	call MoveD1 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	
	tt = t + tt
	pause
	endif

	if (jahat == -4) then

	x0 = x
	y0 = y
	call MoveD2 (x0,y0,tet0,v,t,x,y)
	print*,x,y
	pause
	tt = t + tt
	endif
	!Harkat AZ D 



	enddo

	stop
	end



	subroutine MoveA1 (x0,y0,tet0,v,t,x,y)

	x = x0 + v*t*cos(tet0)
	y = y0 + v*t*sin(tet0)
	return
	end

	subroutine MoveA2 (x0,y0,tet0,v,t,x,y)

	x = x0 - v*t*cos(tet0)
	y = y0 + v*t*sin(tet0)
	return
	end


	subroutine MoveB1 (x0,y0,tet0,v,t,x,y)

	x = x0 - v*t*sin(tet0)
	y = y0 + v*t*cos(tet0)
	return
	end

	subroutine MoveB2 (x0,y0,tet0,v,t,x,y)

	x = x0 - v*t*sin(tet0)
	y = y0 - v*t*cos(tet0)
	return
	end

	
	subroutine MoveC1 (x0,y0,tet0,v,t,x,y)

	x = x0 + v*t*cos(tet0)
    	y = y0 - v*t*sin(tet0)
	return
	end

	subroutine MoveC2 (x0,y0,tet0,v,t,x,y)

  	x = x0 - v*t*cos(tet0)
    	y = y0 - v*t*sin(tet0)
	return
	end


	subroutine MoveD1  (x0,y0,tet0,v,t,x,y)
	
	x = x0 + v*t*sin(tet0)
	y = y0 + v*t*cos(tet0)
	return
	end


	subroutine MoveD2  (x0,y0,tet0,v,t,x,y)
	
	x = x0 + v*t*sin(tet0)
	y = y0 - v*t*cos(tet0)
	return
	end



