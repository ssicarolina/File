function [x,y] = lingkaran(r,pusat_x,pusat_y)
% LINGKARAN adalah fungsi untuk membuat lingkaran
%     [x,y] = lingkaran(r,pusat_x,pusat_y)
%     
%     r = jari-jari
%     pusat_x = letak titik pusat lingakaran pada sumbu x
%     pusat_y = letak titik pusat lingkaran pada sumbu y
    theta = linspace(0,2*pi,100);
    x = pusat_x + r*cos(theta);
    y = pusat_y + r*sin(theta);
end

% bole coba ketik "help lingkaran" di command window,
% perhatikan apa yang muncul 
