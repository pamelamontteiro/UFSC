clear
%3. Resolva a equação diferencial Ordinária do tipo PVI e determine y(x) no domínio [0, pi/2]:
%y'''+y''+y'+(x+1)*y=x*cos(x)
%y(x=0)=1
%y'(x=0)=0
%y''(x=0)=-1
%Escolhendo n intervalos de modo que o erro truncamento máximo seja menor que 1e-4.  
%Faça um gráfico com a solução obtida e confira se ye(x) = cos(x).

% 1° passo:        2° passo         3° passo (eliminar os y's)              4° passo ( definir as condições iniciais )
% y1 = y           y1' = y'         y1' = y2                                y1(x=0)=y(x=0)=1
% y2 = y'          y2' = y''        y2' = y3                                y2(x=0)=y'(x=0)=0
% y3 = y''         y3' = y'''       y3' = x*cos(x) -y" - y' - (x+1)*y          
%                                   y3' = x*cos(x) -y3 - y2 - (x+1)*y1      y3(x=0)=y''(x=0)= -1

# se quisessemos resolver apenas o PVI para y1':
# y1' = fy1(x, y1, y2, y3) = y2
# y1(x=0) = 1
# y´= f(x, y)
# y(x(1)) = y(1)

# y_exato = cos(x)
f_y_exato = @(x) cos(x);

x(1) = 0;
y1(1) = 1;
y2(1) = 0;
y3(1) =-1;

fy1 = @(x, y1, y2, y3) y2;
fy2 = @(x, y1, y2, y3) y3;
fy3 = @(x, y1, y2, y3) x.*cos(x)-y3-y2-(x+1).*y1;

a = 0;
b = pi/2;
n = 2^3

[x, y1, y2, y3] = f_runge_kutta4(n, a, b, x, y1, y2, y3, fy1, fy2, fy3); #valor aproximado calculado com n
[x_estimado, y1_estimado, y2_estimado, y3_estimado] = f_runge_kutta4(2*n, a, b, x, y1, y2, y3, fy1, fy2, fy3); #valor aproximado calculado com 2*n

ye = f_y_exato(x);

[erro_max_exato, pos_erro_exato]                    = max(abs(y1-ye                    )) #Erro máximo exato
[erro_max_estimado, pos_erro_estimado]              = max(abs(y1-y1_estimado(1:2:2*n+1))) #Erro máximo estimado
printf("\n Erros menores que 1e-4 atingidos para n=8\n")
figure
plot(x,ye,"--k",x,y1,"-.r",x,y2,"-.m", x,y3,"-.b")
legenda = legend("y Exato", "y1 Aproximado com RK4","y2 Aproximado com RK4 ","y3 Aproximado com RK4 ");
legend(legenda, "location", "northeast")
grid on