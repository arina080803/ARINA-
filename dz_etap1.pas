const q=100;
var i,j,k,m,p,h,n,sum :integer; a,b,c,d: array [1..q,1..q] of integer;

BEGIN
  
   writeln('Напишите количество строк в матрице А'); readln(m);
   writeln('Напишите количество столбцов в матрице А'); readln(p);
   writeln('Напишите элементы матрицы А');
       for i:=1 to m do
         for j:= 1 to p do
           read(a[i,j]);
   writeln('Напишите количество строк в матрице В'); readln(h);
   writeln('Напишите количество столбцов в матрице В'); readln(n);
    writeln('Напишите элементы матрицы В');
       for i:=1 to h do
         for j:= 1 to n do
           read(b[i,j]);
   
writeln;   
 
 writeln('Сумматор');
   if (m=h) and (p=n) then
     for i:=1 to m do
       for j:= 1 to p do
         begin
         c[i,j]:=a[i,j]+b[i,j];
         end
    else writeln('данные матрицы не суммируются');
   
  for i:= 1 to m do
    begin
      for j:=1 to n do
        write(c[i,j], ' ');
        writeln
    end;
    
 writeln;
 
 writeln('Умножатор');
    if (p=h)  then
     for i:=1 to m do
       for j:= 1 to n do
       begin
         sum:=0;
         for k:= 1 to p do
          sum:=sum+a[i,k]*b[k,j];
          d[i,j]:=sum;
         end 
      else writeln('данные матрицы не перемножаются');
    for i:= 1 to m do
    begin
      for j:=1 to n do
        write( d[i,j], ' ');
        writeln
    end;
    
END.