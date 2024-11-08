clear
%4. Resolva a equação diferencial Ordinária do tipo PVC e determine y(x) no domínio [0, pi/2]:
%y'''+y''+y'+(x+1)*y=x*cos(x)
%y(x=0)=1
%y''(x=0)=-1
%y(x=pi/2)=0
%Escolhendo n intervalos de modo que o erro truncamento máximo seja menor que 1e-4.  
%Faça um gráfico com a solução obtida e confira se y(x=pi/2)=0 foi atingido.



%Condições em x = 0:            Condições em x = pi/2:
% y  (x = 0) = 1                # y  (x = pi/2) = 0  => D (um valor exato da solução y)
% y' (x = 0) = ? => C           # y' (x = pi/2) =
% y''(x = 0) = -1                # y''(x = pi/2) = 

% Para não utilizar as derivadas de ordem mais elevada, substituiremos y', y", y''' por novas variáveis.

% 1° passo:        2° passo         3° passo (eliminar os y's)              4° passo ( definir as condições iniciais )
% y1 = y           y1' = y'         y1' = y2                                y1(x=0)=y(x=0) = 1
% y2 = y'          y2' = y''        y2' = y3                                y2(x=0)=y'(x=0) = ? = C
% y3 = y''         y3' = y'''       y3' = x*cos(x) -y" - y' - (x+1)*y          
%                                   y3' = x*cos(x) -y3 - y2 - (x+1)*y1      y3(x=0)=y''(x=0) = -1

%tenho: y1(n+1=pi/2) = D = 0
%quero: y2 = C = ? = valor chutado



f_y1 = @(x,y1,y2,y3) y2;
f_y2 = @(x,y1,y2,y3) y3;
f_y3 = @(x,y1,y2,y3) x.*cos(x)-y3-y2-(x+1).*y1;

a = 0; b = pi/2; #b = pi; estava errado

D = 0; %Condição de contorno y(x = pi/2) = D = 0; Valor conhecido para y1
n = 16; %para erro de y2 menor que 1e-4
Ci = 0; %chute inicial

%% CONDIÇÕES INICIAIS
x(1) = 0;
y1(1) = 1;
y3(1) = -1;
C = fnewton_calcula_C(Ci, D, n, a, b, x, y1, y3, f_y1, f_y2, f_y3)
y2(1) = C; %valor chutado


% CONDIÇÕES DE CONTORNO
% y1(n+1) = y(x = pi/2) = 0 => D

[x, y1, y2, y3] = f_runge_kutta4(n, a, b, x, y1, y2, y3, f_y1, f_y2, f_y3); #valor aproximado calculado com n
[x_estimado, y1_estimado, y2_estimado, y3_estimado] = f_runge_kutta4(2*n, a, b, x, y1, y2, y3, f_y1, f_y2, f_y3); #valor aproximado calculado com 2*n



%[erro_max_exato, pos_erro_exato]                    = max(abs(y1-ye                    )); #Erro máximo exato
[erro_max_estimado, pos_erro_estimado]              = max(abs(y1-y1_estimado(1:2:2*n+1))); #Erro máximo estimado


erro_estimado_y1 = max(abs(y1 - y1_estimado(1 : 2 : 2*n+1)))
erro_estimado_y2 = max(abs(y2 - y2_estimado(1 : 2 : 2*n+1)))
erro_estimado_y3 = max(abs(y3 - y3_estimado(1 : 2 : 2*n+1)))
erro_CC = y1(n+1) - D #Erro do valor de contorno: Valor calculado - Valor conhecido, para a mesma incógnita
figure
plot(x, y1, "-r", x, y2, "-k", x, y3, "-b"); hold on;
plot(x(1), y1(1), "*r", x(1), y2(1), "s k", x(n+1), y1(n+1), "x k", x(n+1), D, "o k", x(1), y3(1), "d b")
legenda = legend("y1", "y2", "y3");
legend(legenda, "location", "northwest")
grid on