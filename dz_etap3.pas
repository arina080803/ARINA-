const q=100;
var i,j,x2,x1,x0 :integer; a,b,c,d: array [1..q,1..q] of integer;

BEGIN 
   writeln('Напишите элементы матрицы');
       for i:=1 to 3 do
         for j:= 1 to 3 do
           read(a[i,j]);

x2:=a[3,3]+a[1,1]+a[2,2];
x1:=a[2,3]*a[3,2]+a[3,1]*a[1,3]+a[1,2]*a[2,1]-(a[1,1]*a[3,3]+a[2,2]*a[3,3]+a[2,2]*a[1,1]);
x0:=a[1,1]*a[2,2]*a[3,3]+a[1,2]*a[2,3]*a[3,1]+a[2,1]*a[3,2]*a[1,3]-(a[1,1]*a[2,3]*a[3,2]+a[2,2]*a[3,1]*a[1,3]+a[3,3]*a[1,2]*a[2,1]);

writeln;
writeln('-xxx+(',x2,'xx)+(',x1,'x)+(',x0,')');
END.  