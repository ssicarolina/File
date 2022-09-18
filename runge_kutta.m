function[tvals,yvals]=rkgen(f,tspan,startval,step,method)
%% KAMUS
% f = fungsi y' = f(t,y)
% tspan = [a,b] dengan a batas bawah, b batas atas
% startval = y(t_0) = y_0
% step = h

%% ALGORITMA
    b=[ ];c=[ ];d=[ ];
    if method <1 | method >3
        disp("Method number unknown so using Classical");
        method=1;
    end
    %% METODE KLASIK
    if method==1
        order=4;
        b=[ 1/6 1/3 1/3 1/6]; d=[0 .5 .5 1];
        c=[0 0 0 0;0.5 0 0 0;0 .5 0 0;0 0 1 0];
        disp("Classical method selected");
        %% METODE BUTCHER SELECTED
    elseif method ==2
        order=6;
        b=[0.07777777778 0 0.355555556 0.13333333 ...
            0.355555556 0.0777777778];
        d=[0 .25 .25 .5 .75 1];
        c(1:4,:)=[0 0 0 0 0 0;0.25 0 0 0 0 0;0.125 0.125 0 0 0 0; ...
            0 -0.5 1 0 0 0];
        c(5,:)=[.1875 0 0 0.5625 0 0];
        c(6,:)=[-.4285714 0.2857143 1.714286 -1.714286 1.1428571 0];
        disp("Butcher method selected");
    else
        %% METODE MERSON SELECTED
        order=5;
        b=[1/6 0 0 2/3 1/6];
        d=[0 1/3 1/3 1/2 1];
        c=[0 0 0 0 0;1/3 0 0 0 0;1/6 1/6 0 0 0;1/8 0 3/8 0 0; ...
            1/2 0 -3/2 2 0];
        disp("Merson method selected");
    end
    %% OUTPUT
    steps=(tspan(2)-tspan(1))/step+1;
    y=startval; t=tspan(1);
    yvals=startval; tvals=tspan(1);
    for j=2:steps
        k(1)=step*feval(f,t,y);
        for i=2:order
            k(i)=step*feval(f,t+step*d(i),y+c(i,1:i-1)*k(1:i-1)');
        end
        y1=y+b*k' ;
        t1=t+step;
        %collect values together for output
        tvals=[tvals, t1]; yvals=[yvals, y1];
        t=t1; y=y1;
    end
    tvals =[tvals]' ; yvals =[yvals]'; 
    hasil = [tvals,yvals]
    
end