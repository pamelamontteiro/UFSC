function a = coeficientes_ajuste_polinomial(x, y, n)

    for i = 1 : n + 1
        for j = 1 : n + 1
            A(i,j) = (sum(x .^ (i + j -2)));
        end
        B(i, 1) = sum(x.^(i-1) .* y);
    end
    
    a = A \ B;

endfunction