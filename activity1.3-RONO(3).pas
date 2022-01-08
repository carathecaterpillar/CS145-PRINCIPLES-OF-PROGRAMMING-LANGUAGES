{Activity1.3-RONO}
Program Physics;
uses crt;

var
   v,a, h, iv, d, h2 :real;
   ch: integer ;


{Question a}
{}
function getHeight(var v, a: real):real;
var
    h, iv: real;
begin
    iv := Sin(a) * v;
    h :=(iv*iv) / (2*9.80);
    getHeight:=h;
end;

{Question b}
function getTime(var v, a: real):real;
var
  t: real;
begin
    iv:=0; 
    h:=0;
    iv := Sin(a) * v;
    h :=(iv*iv) / (2*9.80);
    t:=(h*2)/iv;
    getTime:=t;
end;


{Question c}
procedure findD(var v,a, d:real);
var
   t, fv: real;

begin
    iv:=0; 
    h:=0;
    iv := Sin(a) * v;
    h :=(iv*iv) / (2*9.80);
    t:=(h*2)/iv;
    fv:=v*COS(a);
    d:=fv*t;
    
    write ('3) Horizontal Displacement = ');
    writeln(d:0:2, ' m');
    
end;

{Question d}
{y = viy • t + 0.5 • g • t2}

procedure findH2(var v,a, h2:real);

var
    g: real;
begin
    iv:=0;
    g:=-9.80;
    iv:= SIN(a) * v;
    h2:=iv*4;
    h2:= h2+(0.5*g*16);
   
    
    write ('4) distance above the ground after 4 seconds = ');
    writeln(h2:0:2, ' m');
    
end;


{main program}
begin

    clrscr;
    writeln ('Input Velocity: ');
    readln (v);
    writeln ('angle of trajectory: ');
    readln (a);
    writeln ('Initial Velocity (v): ', v:0:2);
    writeln ('angle of trajectory (a):', a:0:2);
    writeln ('');
    a:=a*3.14/180;

Repeat
    write('Options: ');
    writeln ('');
    writeln ('[1] Calculate the height at which the shell explodes. ');
    writeln ('[2] How much time passed between the launch of the shell and the explosion?.');
    writeln ('[3] What is the horizontal displacement of the shell when it explodes?');
    writeln ('[4] What is its horizontal distance traveled x after t seconds? t = 4s');
    writeln ('[5] exit');
    readln(ch);
    writeln (' YOUR CHOICE: ', ch);
    
    If ch=1 Then writeln('1) Height = ' ,getHeight(v, a):0:2);
    If ch=2 Then writeln('2) Time = ' ,getTime(v, a):0:2, ' seconds ');
    If ch=3 Then findD(v, a, d);
    If ch=4 Then findH2(v, a, h2);
    If ch<1 Then writeln('Invalid Input');
    If ch>5 Then writeln('Invalid Input');
    
    writeln ('Press any key to continue.');
    readkey;
    until ch=5; 
    writeln(' Goodbye! ');
end.