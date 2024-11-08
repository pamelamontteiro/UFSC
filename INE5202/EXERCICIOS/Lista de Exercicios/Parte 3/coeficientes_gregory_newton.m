function coeficientes = coeficientes_gregory_newton(x, y)
    n = length(x) - 1; % Calcula o grau n
    % Calcular coeficientes de primeira, segunda... ordem
% Pn(x) = y(1)*1 + Δ¹y(1)(xp - x(1)) + Δ²y(1)(xp - x(1))(xp - x(2)) + ... + Δ^n y(1) * Π[j=1:n](x - x(j))
% Pn(x) = c(1)*1 + c(2)  (xp - x(1)) + c(3)  (xp - x(1))(xp - x(2)) + ... + c(n+1)   * Π[j=1:n](x - x(j))
    for i = 1 : (n + 1) - 1
        D(i, 1) = (y(i+1) - y(i)) / (x(i+1) - x(i));
    end
    
    for k = 2 : n
        for i = 1 : (n + 1) - k
            D(i, k) = (D(i + 1, k - 1) - D(i, k - 1)) / (x(i + k) - x(i));
        end
    end
    
    coeficientes = [y(1), D(1, 1:n)];
end