printf("\n===========Questão 2.1=================\n")

%1a) Armazenando os dados em uma matriz
n1=15; n2=25; n3=50;

%i=1    #3*x(i) +   2*x(i+5)    = 2 

i=1;    A(i,i)=3;    A(i,i+5)=2;    B(i,1)=2;

%for i=2:n1-1      #x(i-1)      +3*x(i)+    2*x(i+5) = -2
for i=2:n1-1;      A(i,i-1)=1;   A(i,i)=3;   A(i,i+5)=2; B(i,1)=-2; end

%for i=n1:n2-1    #2*x(i-4)+    4*x(i)+     x(i+1)      = 3 
for i=n1:n2-1;   A(i,i-4)=2;      A(i,i)=4;  A(i,i+1)=1; B(i,1)=3; end

%i=n2           #x(i-1) + 6*x(i)-   x(i+4) =-2 
i=n2;    A(i,i-1)=1;     A(i,i)=6;   A(i,i+4)=-1; B(i,1)=-2; 

%for i=n2+1:n3-1 #  x(i-3) +    x(i-1) +    7*x(i)+     2*x(i+1)= 5 
for i=n2+1:n3-1;     A(i,i-3)=1;    A(i,i-1)=1; A(i,i)=7;   A(i,i+1)=2; B(i,1)=5; end

%i=n3       #2*x(i-10)+      5*x(i)     = -5 
i=n3;   A(i,i-10)=2;    A(i,i)=5;   B(i,1)=-5; 
%A
%B

function X = fgauss(A, B)
    A = [A B];
    n = size(A, 1);
%   m = size(B, 2);
    for k = 1: n - 1
        % Buscar a melhor linha k, para a troca de linhas - Pivotação Parcial:
        % Procurar na coluna j=k, qual é o maior valor em módulo abaixo da diagonal principal
        % A(k:n, k)
        k;
                [maior_modulo, local_do_maior] = max(abs(A(k:n, k)));%A(k:n, k) contem o vetor de coeficientes abaixo da diagonal principal da coluna k
        local_do_maior = local_do_maior + k - 1; %Acresenta as k-1 linhas acima da diagonal principal da coluna k
        A_original = A;
        A(k, : ) = A(local_do_maior, : );          %Linha k recebe a linha que contem o maior modulo
        A(local_do_maior, : ) = A_original(k, : ); %Linha do maior modulo recebe a linha k original, antes de ser substituida
        A;
        for i = k+1:n
        
            aux = A(i,k) / A(k, k);
            A(i,k) = 0;
            for j = k + 1: n + 1
                A(i, j) = A(i, j) - aux * A(k, j);
            end
        end
    end
%Retrosubstituição   
%Analise de tipos de sistemas: Determinado, Indeerminado e Impossivel
    X(n, 1) = A(n,n+1)/A(n,n);
    for i = n - 1:-1:1
        somatorio = 0;
        for j = i + 1:n
            somatorio = somatorio + A(i, j) * X(j,1);
        end
        %somatorio = sum(A(i, i + 1:n) * X(i + 1:n,1)) %alternativa
        X(i, 1) = (A(i, n + 1) - somatorio) / A(i, i);
    end
end

%1b) Resolvendo o sistema acima por um método direto, imprimindo a solução e o resíduo máximo das equações

X=fgauss(A,B)
res=max(abs((A*X)-B))

%1c)Imprimindo o número total de operações com números reais (em PONTO FLUTUANTE) utilizadas;

total_operacoes = (4*n3^3 + 9*n3^2 -n3-6)/6


printf("\n===========Questão 2.2=================\n")

%2a). Demostre/Imprima que o sistema acima tem convergência garantida por métodos iterativos

printf("\npasso 1: o módulo de cada elemento da diagonal principal é maior ou igual a soma dos módulos dos demais elementos da respectiva linha:\n")
printf("\n|3| >= |2|\n")
printf("\n|3| >= |1|+|2| \n")
printf("\n|4| >= |1|+|2|\n ")
printf("\n|6| >= |1|+|-1|\n")
printf("\n|7| >= |1|+|2|+|1|\n")
printf("\n|5| >= |2|\n")

printf("\n passo 2: o módulo do elemento da diagonal principal é maior que a soma dos módulos dos demais elementos da respectiva linha para alguma linha: \n")

printf("\ncomo vimos anteriormente, essa condição é satisfeita para diversas linhas (mas somente a primeira linha já seria o suficiente para provar). Logo, o possui uma diagonal dominante e converge para uma solução\n\n")

%2b). Resolva o sistema acima por um método iterativo construído em aula

function [X nop] = fgauss_seidel(A, B)
    n = size(A, 1);
    nao_nulos_total = zeros(n, 1); % Corrigir a inicialização
    NN = zeros(n, n); % Corrigir a inicialização
    
    % Calcula os índices originais dos coeficientes não nulos de cada linha i em NN(i,..)
    for i = 1 : n
        nao_nulos_total(i) = 0;
        
        % Percorre os valores anteriores ao coeficiente da diagonal principal
        for j = 1 : i - 1
            if abs(A(i, j)) > 1e-14
               nao_nulos_total(i) = nao_nulos_total(i) + 1;
               NN(i, nao_nulos_total(i)) = j;
            end
        end
        
        % Percorre os valores posteriores ao coeficiente da diagonal principal
        for j = i + 1 : n
            if abs(A(i, j)) > 1e-14
               nao_nulos_total(i) = nao_nulos_total(i) + 1;
               NN(i, nao_nulos_total(i)) = j;
            end
        end
    end
    
    X = zeros(n, 1); % Corrigir a inicialização de X
    diferenca = 1;
    k = 0;
    nop = 0;
    lambda = 1;
    while diferenca > 1e-06 && k < 100 
        k = k + 1;
        X_anterior = X;
        for i = 1:n
            c = 1:nao_nulos_total(i);

            X(i) = (1 - lambda) * X_anterior(i) + lambda * (B(i, 1) - sum(A(i, NN(i, c)) * X(NN(i, c), 1))) / A(i, i);
        end
        diferenca = max(abs(X - X_anterior));
    end
    
   
    for i =1:n
    
        nop += nao_nulos_total(i) + (nao_nulos_total(i)-1) +5; %para uma operação
     
    end
     nop = nop *k; %para todas as operações
     k
end


[X nop] = fgauss_seidel(A, B);
X
residuo2 = max(abs((A * X) - B))

%2c). Imprima o número total de operações com números reais (em PONTO FLUTUANTE) utilizadas
printf("\nO número de operações é: %d\n", nop)

