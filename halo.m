clear
clc

%A = [2, 4.25, 1.5, 1.25, 11.75, 15.25 ; 0, 1, 6.25, 10.5, 34.5, 28.75; 0, 2, 3.5, 5, 19, 12.5; 8, 1, 2, -3, 7, 17 ]
 
n=input('Jumlah Matriks=');
for i=1:n-1
   M(1,:) = input('Masukkan SPL baris ke- %d = ', i );
end
disp(M)
for i=1;n-1
   if M(i,i)==0
       a=1;
       while M(a,1)==0
           a=a+1;
       end
       T=M(i,:);
       M(i,:)=M(a,:);
       M(a,:)=T;
%        disp(['B'num2str(i)'<--> B'num2str(a)])
       disp(M)
   end
   for j=i+1:n
      if(M, j)~=0
%           disp (['B'num2str(j)'-(num2str(M,(j,i))'/') ...
%                '(num2str(M,(j,i))
          M(j,:)=M(J,:)=((M(j,i)./M(i,i))*(M(i,i));
          disp(M)
       end
    end
end
if M(n,n)=0&M(n,n+1)~=0
  disp('Tidak memiliki solusi tunggal')
else
   for i=n:-1:2
       for j=1-1:-1:1
%            disp('B'num2str(j)'-('num2str(j,i))'/'...
               num2str(M,(j,i))'B'num2str(i)])
           M(j,:)=M(j,:)-(1/M(j,i)./M(i,i))*(i,:));
           disp(M)
       end
   end
   for i=1:n
%        disp(['(1/'num2str(M(i,i)) ')B' num2str(i)])
       M(i,:)-1(i,i))*M((i,:);
       disp (M)
   end
   disp('Matrik Solusi')
   disp (M)
   disp('Solusi')
   for i=1:n
%        disp(['x'num2str(i) '-' num2str(M(1,n+1))])
   end
end