function [a b c d]=fSplineb(n,x,y);
%teremos 'n' splines cúbicas, uma para cada intervalo,
% formando um sistema tridiagonal de 'm-1' equacoes para S (derivadas de segunda ordem) 
for i=1:n	
	h(i)=x(i+1)-x(i);
end
% Splines quadráticas NAS PONTAS da figura S1=S2 e Sn+1=Sn
%1a. eq. i=2
t(2)=0; r(2)=3*h(1)+2*h(2); d(2)=h(2);       b(2)=6*((y(3)-y(2))/h(2)-(y(2)-y(1))/h(1)); %para S1
for i=3:n-1
 t(i)=h(i-1); r(i)=2*(h(i-1)+h(i)); d(i)=h(i); b(i)=6*((y(i+1)-y(i))/h(i)-(y(i)-y(i-1))/h(i-1)); 
 %para Si
end%for
%ultima eq. i=n
t(n)=h(n-1); r(n)=(2*h(n-1)+3*h(n)); d(n)=0;   b(n)=6*((y(n+1)-y(n))/h(n)-(y(n)-y(n-1))/h(n-1)); 
%para Sn
%Sistemas de eqs. tridiagonal com eqs. de i=2 a n
for i=3:n
    aux=t(i)/r(i-1);t(i)=0;
    r(i)=r(i)-aux*d(i-1);
	b(i)=b(i)-aux*b(i-1);
end
S(n)=b(n)/r(n);
for i=n-1:-1:2
  S(i)=(b(i)-d(i)*S(i+1))/r(i);
end
% Splines quadráticas NAS PONTAS da figura S1=S2 e Sm+1=Sm
S(1)=S(2); S(n+1)=S(n);
% Calcula-se cada conjunto de coeficientes a, b, c, d dos polinimois de 3o. grau
a=[];b=[];c=[];d=[]; %zera memoria
for i=1:n
	a(i)=(S(i+1)-S(i))/(6*h(i));
	b(i)= S(i)/2;
	c(i)=(y(i+1)-y(i))/h(i)-(S(i+1)+2*S(i))*h(i)/6;
	d(i)= y(i);
end
end