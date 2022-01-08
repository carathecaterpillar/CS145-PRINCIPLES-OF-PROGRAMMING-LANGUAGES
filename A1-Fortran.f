program Act1_Rono
   implicit none
    real :: i, a, iv, t
    real :: h, d, fv, h2
    real :: g=-9.8
    
    read *, i
   Print *, "Initial Speed: " , i ,"m/s"
   read *, a
    Print *, "Angle: ", a ,"degrees"
    Print *, ""

    a=a*3.14/180

   Print *, "a. Calculate the height at which the shell explodes." 
   iv = sin(a) * i
   h =( iv**2 ) / (2*9.80)
   Print *,"    ", h , "m"
   Print *, ""
   
    Print *, "b. How much time passed between the launch of the shell and the explosion?." 
    t=(h*2)/iv
    Print *,"    ", t, "seconds"
    Print *, ""
    
    Print *, "c.What is the horizontal displacement of the shell when it explodes?" 
    fv=  i * COS(a)
    d=fv*t
    Print *,"    ", d, "m"
    Print *, ""
    
    Print *, "d.What is its distance above the ground h after t seconds?"
    Print *, "    time = 4 seconds" 
    Print *, ""
    
    h2=iv*4 + 0.5 * g * (4**2)
    Print *,"    ", h2, "m"
    


end program Act1_Rono