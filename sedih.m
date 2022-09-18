clear
clc

% PROGRAM WAJAH MAUNGUT - UNGUT

 % pake fungsi ldari file lingkaran.m yg udh disimpan
 figure(2)
 [x1,y1] = lingkaran(10,0,0);
 [x2,y2] = lingkaran(1,-3,5);
 [x3,y3] = lingkaran(1,3,5);
 [x4,y4] = lingkaran(2,0,0);
 plot(x1,y1,'r')
 axis([-11 11 -11 11])
 title("UNGUT - UNGUT")
 hold on
 pause(1)
 plot(x2,y2,'r')
 pause(1)
 plot(x3,y3,'r')
 pause(1)
 a = linspace(-2,2,100);
 b = sin(a) - 4;
 plot(a,b,'r')
 hold off
 