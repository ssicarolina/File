clear
clc

% program menghitung persamaan garis parabola

a = linspace (-10,10,10000);
parabola(a,1,1)
hold on
parabola(a,1,1)
parabola(a,2,1)
parabola(a,3,4)
hold off

% fungsi dengan input
function parabola(x,p,c)
     y = p*x.^2 + c ; 
    plot(x,y)
end

