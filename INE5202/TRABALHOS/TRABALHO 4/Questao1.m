%1a. Monte as 3 equações que determinam os m=3 coeficientes pesos C e os m=3 pontos/nós t necessários no Método de Gauss-Legendre;

printf('\n1a) =======\n\n')
'c(1)        + c(2)        + c(3)        = 2   (Eq. 1)'
'c(1)*t(1)   + c(2)*t(2)   + c(3)*t(3)   = 0   (Eq. 2)'
'c(1)*t(1)^2 + c(2)*t(2)^2 + c(3)*t(3)^2 = 2/3 (Eq. 3)'
'c(1)*t(1)^3 + c(2)*t(2)^3 + c(3)*t(3)^3 = 0   (Eq. 4)'
'c(1)*t(1)^4 + c(2)*t(2)^4 + c(3)*t(3)^4 =2/5  (Eq. 5)'
'c(1)*t(1)^5 + c(2)*t(2)^5 + c(3)*t(3)^5 = 0   (Eq. 6)'

%1b. Determine os m=3 coeficientes c e m=3 pontos/nós t necessários no Método de Gauss-Legendre
%através das 2*3 equações não lineares obtidas no item (1a), use o código do Método de Newton genérico
%para n equações não lineares(sugestões: xi = C's devem estar entre 0 e 1, pois a soma é 2; e t's 
%devem estar entre -1 e +1. Usar sub-relaxação.);
printf('\n1b) =======\n\n')

#xi = [1,-1,0.5,-0.5,0.8-0.8]; %tinha 5 elementos em Linha. Peters
 xi = [0.5; 0.5; 0.5; -0.5; 0.0; 0.8;]; #%xi = C devem estar entre 0 e 1, pois a soma é 2. E t devem estar entre -1 e +1
n = 6;
x =fNewtonSisNum(n,xi)


%1c. Alternativamente, determine os m=3 pontos/nós t necessários no Método de Gauss-Legendre 
%através das raízes do polinômio de Legendre de grau m=3;

printf('\n1c) =======\n\n')

'Dado que L(3) = 1/2(5t^3-3t), temos as raízes t:'

fl = [5; 0; -3;0];
t = sort(roots([5/2 0 -3/2 0]))


%1d. Obtidos os m=3 pontos/nós t acima, determine os m=3 coeficientes pesos C do Método de Gauss-Legendre através das 3 primeiras equações, linearizadas com os 3 t´s obtidas no item 1c;

printf('\n1c) =======\n\n')


%integral exata
I = [2 
     0 
    2/3];

 A = [1 1 1
    t(1) t(2) t(3)
    t(1)^2 t(2)^2 t(3)^2
 ];

C = A\I

