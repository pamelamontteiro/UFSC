function M = getM(R)
#Avalia a Multiplicidade estimada pelo numero de Restos tendendo a ZERO (menor que um limite (0.1))
    M = 1;
    somaRestos = sum(abs(R(1:2))); # soma dois primeiros restos
    while somaRestos < 1e-5
        M = M + 1;
        somaRestos = somaRestos + abs(R(M+1));
    end
end