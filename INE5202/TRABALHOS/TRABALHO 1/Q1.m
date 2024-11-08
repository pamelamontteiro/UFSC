% armazenamento dos números decimais

x_float = single(-20.125);
x_double = -20.125;
y_float = single(-60.06); 
y_double = -60.06;  

%impressão do s, e, f em binário

s_x_float = "1";
e_x_float = "10000011";
f_x_float = "01000010000000000000000";

printf("\nValor (float): %f \n", x_float)
printf("Sinal: %s \n", s_x_float)
printf("Expoente: %s \n",e_x_float)
printf("Fração: %s \n",f_x_float)

%extraindo o sinal, expoente e fração para double

s_x_double = "1";
e_x_double = "10000000011";
f_x_double = "0100001000000000000000000000000000000000000000000000";

printf("\nValor (double): %f \n", x_double)
printf("Sinal: %s \n", s_x_double)
printf("Expoente: %s \n",e_x_double)
printf("Fração: %s \n",f_x_double)

%%extraindo o sinal, expoente e fração para float

s_y_float = "1";
e_y_float = "10000100";
f_y_float = "11100000011110101110001";

printf("\nValor (float): %f \n", y_float)
printf("Sinal: %s \n", s_y_float)
printf("Eypoente: %s \n",e_y_float)
printf("Fração: %s \n",f_y_float)

%%extraindo o sinal, expoente e fração para double (-60,0625)

s_y_double = 1;
e_y_double = "10000000100";
f_y_double = "1110000001000000000000000000000000000000000000000000";


printf("\nValor (double): %f \n", y_double)
printf("Sinal: %s \n", s_y_double)
printf("Eypoente: %s \n",e_y_double)
printf("Fração: %s \n",f_y_double)


%impressão com 20 dígitos decimais significativos

printf("\nx_float com 20 dígitos decimais = %.20f \n", x_float)
printf("x_double com 20 dígitos decimais = %.20f \n\n", x_double)
printf("y_float com 20 dígitos decimais = %.20f \n", y_float)
printf("y_double com 20 dígitos decimais = %.20f \n", y_double)

%erro estimado
% Cálculo dos erros absolutos de arredondamento

erro_x = (abs(-20.12500000000000000000 - (-20.125))/abs(-20.125))*100;
erro_y = (abs(-60.06000137329101562500 - (-60.06))/abs(-60.06))*100;


printf("\nErro estimado para x: %.20f\n", erro_x)
printf("Erro estimado para y: %.20f\n", erro_y)

