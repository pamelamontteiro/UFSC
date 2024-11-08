x = [1.2,   1.5,   2,     4,     6,     10,   15]
y = [0.45, 0.40, 0.33, 0.20, 0.14, 0.10, 0.06]

% Determine uma funcao aproximadora g(x) que represente os pontos experimentais
% acima

g = @(a, x) a(1)./(1+a(2)+a(3).*x.^2);

f1 = @(a, x, y) sum((g(a, x) - y)./(a(2)+a(3).*x.^2)            );
f2 = @(a, x, y) sum((g(a, x) - y).*(a(2)+a(3).*x.^2).^-2        );
f3 = @(a, x, y) sum((g(a, x) - y).*(a(2)+a(3).*x.^2).^-2.*(x.^2));

% A solucao para c eh obtida pelo metodo de newton para sistemas de 3 equacoes
% nao linerares

% Valor chutado para a solucao:
ai = [2.5; -0.1; 0.4];#ai = [1; 1; 1];
##1º Interpola em 3 pontos p determinar uma valor inicial: ai
g1 = @(a, x, y) sum(g(a, x(1)) - y(1));
g2 = @(a, x, y) sum(g(a, x(3)) - y(3));
g3 = @(a, x, y) sum(g(a, x(7)) - y(7));
ai = newtonsis3(ai, x, y, f1, f2, f3)
#2ºResolve o ajuste a partir de ai calculado por interpolação
a = newtonsis3(ai, x, y, f1, f2, f3)

h = 0.01;
xp = min(x) : h : max(x);
yp = g(a, xp);


desvios_gx= sum(abs(g(a, x) - y))

% Agora podemos testar a aproximacao g(x) polinomia (Pn(x)) de grau 2, 3 ...


% experimentais:

% Agora, iremos ajustar um polinomio de grau n = 1
 
n = 3 %ao utilizar n=6 o ajuste seria equivalente ao interpolador
a1 = coeficientes_ajuste_polinomial(x, y, n);


yp1 = valor_polinomio_base_canonica(xp, a1);

y_desvio = valor_polinomio_base_canonica(x, a1);

'A função g(x) não é uma boa proposta para o ajuste, pois mesmo ajustando os valores iniciais e o fator de relaxação, os resultados não foram satisfatórios. O polinômio p(x) com grau n = 3 se mostrou mais eficiente, como podemos ver na curva em azul'

printf('\n')
desvio_polinomio = (sum(abs(y_desvio - y)))
printf('\n')

figure
plot(x, y, "r*", xp,yp1, "b-", xp,yp, "r-")
grid on
hold on



