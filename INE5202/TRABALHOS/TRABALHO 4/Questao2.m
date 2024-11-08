%2. Calcule a integral de f(x)=x*ln(x)/(1+cos(x)) entre 0.1 e 1.0, com precisão de
%4 dígitos significativos (pode-se estimar o erro), pelo método mais eficiente
%(testar Simpson, Gauss-Legendre,...)

f = @(x) x.*log(x)./(1+cos(x)); %definindo a função 
a = 0.1;
b = 1.0;

integral_exata = -0.126427

printf("\n2: Método de Simpson\n")

ns = 8%subintervalos (par)

Sn = f_simpson(ns, a, b, f) 

erro_estimado_simpson = abs(Sn - f_simpson(2*n, a, b, f)) 

printf("\n3: Método de Gauss-Legendre\n")
m= 4 %pontos
Gm = f_gauss_legendre(m, a, b, f)
erro_estimado_Gm = abs(Gm - f_gauss_legendre(m+1, a, b, f))

'Para um erro com 4 digitos significativos, o método de Gauss Legendre se mostrou mais eficiente, pois converge com 3 subintervalos, enquanto simpson utiliza 8.'