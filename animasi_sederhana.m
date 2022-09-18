x = linspace(0, 2*pi); % vektor 100 anggota, dari 0 sampai 2pi.
for t = 1:30
    plot(sin(x + 2*pi*t/30));
    M(t) = getframe;
end
movie(M, 2, 20)
% akan menghasilkan animasi dari
% bingkai dalam M dengan laju 20 bingkai per detik, 
% dan animasi diulang 2 kali.