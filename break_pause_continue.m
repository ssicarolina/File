clear
clc

fprintf("\t\t\t\t\t\tON FIRE !!");
fprintf("\n\t\t\t\tBREAK - PAUSE - CONTINUE\n")

% penggunaan pause
disp("PAUSE")
for i = 1:7
    pause(0.5); % menunda program agar berjalan setiap 0.5 detik
    fprintf("\t%d",i);
end
fprintf("\n\tlooping selesai\n")

% penggunaan break
disp("  ")
disp("BREAK")
for i = 1:20
    pause(0.5); % menunda program agar berjalan setiap 0.5 detik
    fprintf("\t%d",i);
    if i==10
        fprintf("\nangka 10 ditemukan");
        break
    end

end
fprintf(" maka looping selesai\n")

% penggunaan continue
disp("  ")
disp("CONTINUE")
for i = 1:20
    if i==10
        fprintf("\nangka 10 ditemukan\n");
        continue % looping akan langsung dilanjutkan ke i=11,
                 % tanpa mengeksekusi yg dibawah
    end
    pause(0.5); % menunda program agar berjalan setiap 0.5 detik
    fprintf("\t%d",i);
    fprintf("'")

end
fprintf("\nlooping sudah selesai\n")