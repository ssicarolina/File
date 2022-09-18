clear
clc

fprintf("\t\t\t\t\t\t\tON FIRE !!");
fprintf("\n\t\t\t\t\t\t\t   PLOT\n")



% Plot y = sin(x)
x = linspace(0,10,100);
y1 = sin(x);
y2 = sin(2*x+1);
y3 = log(x);
y4 = 2*cos(x);
y5 = sin(2*x-1);
y6 = 2*cos(2*x+1);

% plot single line
figure(1)
plot(x,y3,'b')

% plot multi lines
figure(2)
plot(x,y1,'b--',x,y2,'g-.',x,y4,'r-')
axis([0 10 -3 3]);      % [xmin xmaks ymin ymaks]
title("PLOT SIN COS LOGARITMA"); % judul 
xlabel("x");        % label sumbu x
ylabel("y");        % label sumbu y 


hold on             % membuka
plot(x,y5,'k-'); % plot ini masuk ke figure 2
plot(x,y6,'Color',[0 0.5 0.5]); % plot ini masuk ke figure 2
hold off            % menutup