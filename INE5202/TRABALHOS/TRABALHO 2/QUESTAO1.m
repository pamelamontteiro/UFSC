
%1). Determine todas as raízes das equações e os respectivos resíduos: 

%1.a). sin(x)^3 * cos(x)^3+0.1=0

fa= @(x) sin(x).^3 .*cos(x).^3 .+ 0.1  
subdominioA = [-6 6]
xa = metodo_newton(fa,subdominioA)
residuo_A = abs(fa(xa))

printf('\n\n');

%1.b). x^4 - 2*i x^3 - 1.5 x^2 + (0.5*i) x + 0.0625 = 0 %valores iniciais complexos #

fb = [1; complex(0,-2); -1.5; complex(0,0.5); 0.0625] 
[xb, Mb] = roots_aula(fb)
residuo_B = valorPolinomio(fb,xb)
%escrever a forma fatorada p4= (x-x1)^M
printf('fb_fatorado = (x-0.05i) ^4')
printf('\n\n');


%1.c). x^8 - 11.3 x^7 + 50.83 x^6 - 114.581 x^5 + 132.9985 x^4 - 72.57875 x^3 + 14.865625 x^2 - 1.2734375 x + 0.0390625 = 0

fc = [8; - 11.3; 50.83; - 114.581; 132.9985; - 72.57875; 14.865625; - 1.2734375; 0.0390625] 
[xc, Mc] = roots_aula(fc)
residuo_C = valorPolinomio(fc,xc)

printf( "fc_fatorado = (x-0.742183 + 0.697582i) *( 0.101380 + 0.000000i)* ( 0.099314 - 0.001108i)*( 0.743121 - 0.000000i) *( 0.099314 + 0.001108i) * (0.742183 - 0.697582i )*(-0.557497 + 2.454039i  )*(-0.557497 - 2.454039i)")


printf('\n\n');
%1.d). x^8 - 1.3 x^7 + 0.83 x^6 - 0.681 x^5 + 0.2285 x^4 - 0.09675 x^3 + 0.021125 x^2 - 0.0019375 x + 0.0000625 = 0

fd = [1; - 1.3; 0.83; - 0.681; 0.2285; - 0.09675; 0.021125; - 0.0019375; 0.0000625]
[xd, Md] = roots_aula(fd)
residuo_D = valorPolinomio(fd,xd)

printf('\n\n');

