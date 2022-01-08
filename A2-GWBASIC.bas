'Activity 1.2 Rono
90 INPUT v, a
97 print " "
100 PRINT "enter velocity (v): "
150 ON ERROR GOTO 550
210 PRINT v
300 PRINT "enter angle of trajectory (a): "
350 ON ERROR GOTO 550
500 PRINT a
525 print " "
530 a=a*3.14/180


600 PRINT " "
605 print "options:  "
650 print "a. Calculate the height at which the shell explodes. "
700 print "b. How much time passed between the launch of the shell and the explosion?."
750 print "c. What is the horizontal displacement of the shell when it explodes?"
800 print "d. What is its horizontal distance traveled x' after t seconds?     time = 4 seconds"
850 print"x. EXIT"
890 print " "


900 INPUT ch$
910 INPUT " YOUR CHOICE: "; ch$
950 print  ch$


1000 IF ch$="a" THEN GOTO 2000
1050 IF ch$="b" THEN GOTO 3000
1060 IF ch$="c" THEN GOTO 4000
1070 IF ch$="d" THEN GOTO 5000
1080 IF ch$="x" THEN GOTO 6000
1090 ON ERROR GOTO 1095

 
1095 PRINT "INVALID INPUT"
1096 GOTO 600 

2000 PRINT " Question a"
2010 iv = SIN(a) * v
2020 h =(iv*iv) / (2*9.80)
2030 PRINT h, "m"
2040 PRINT "Press Any Key "
2045
2900 GOTO 600

3000 PRINT " Question b"
3005 iv = SIN(a) * v
3006 h =(iv*iv) / (2*9.80)
3010 t=(h*2)/iv
3020 PRINT t, "seconds"
3030 PRINT "Press Any Key "
3900 GOTO 600
3950 PRINT " "

4000 PRINT " Question c"
4005 iv = SIN(a) * v
4006 h =(iv*iv) / (2*9.80)
4009 t=(h*2)/iv
4010 fv=v*COS(a)
4020 d=fv*t
4040 PRINT d, "m"
4045  PRINT "Press Any Key "
4900 GOTO 600

5000 PRINT " Question d"
5005 iv = SIN(a) * v
5010 h2=iv*4 
5011 h2=h2+(0.5*-9.8*16)
5090 PRINT h2
5095  PRINT "Press Any Key "
5900 GOTO 600

6000 PRINT " EXIT "
6050 END