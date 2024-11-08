#SPLINES CÚBICAS
clear
clc

x = [ 1 : 0.25 : 2];
y = 1./(x.*x);

n=length(x)-1; % num de intervalos
printf("\nnumero de intervalos, numero de Splines: %d\n\n",n)

% Cálculo por n Splines cubicas, uma para cada intervalo, formando um sistema tridiagonal de 'n-1'
% equacoes para S (derivadas de segunda ordem) 
a=[];b=[]; %zera memoria
  [a b c d]=fSplineb(n,x,y); % Splines quadráticas NAS PONTAS da figura S1=S2 e Sn+1=Sn
np=4*n;    %4 sub-divisões para cada sub-intervalo entre x(i) e x(i+1) para plotagem
xpp=[];ypp=[];
for i=1:n
    xp=x(i):(x(i+1)-x(i))/np:x(i+1);
	for k=1:np+1
	    yp(k) = a(i)*(xp(k)-x(i))*(xp(k)-x(i))*(xp(k)-x(i));
	    yp(k) = yp(k) + b(i)*(xp(k)-x(i))*(xp(k)-x(i));
	    yp(k) = yp(k) + c(i)*(xp(k)-x(i))+d(i);
	end
	xpp=[xpp xp];ypp=[ypp yp];
end
figure
plot(x,y,'*k','markersize',20,xpp,ypp,'-m','LineWidth',5)
grid on

