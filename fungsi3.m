clear 
clc
% FUNGSI DENGAN INPUT DAN OUTPUT 
figure(1)
[xl,yl] = lingkaran(11);
plot(xl,yl,'k')
axis([-12 12 -12 12]);
title("RODA")

for i = 1:.1:10  % pake fungsi yg di paling bawah
    pause(0.1);
    hold on
    [xl,yl] = lingkaran(i);
    plot(xl,yl)
    hold off
end

 
function [x,y] = lingkaran(r)
    sudut = linspace(0,2*pi,100) ;
    x = r*cos(sudut) ;
    y =r*sin(sudut) ; 
end

