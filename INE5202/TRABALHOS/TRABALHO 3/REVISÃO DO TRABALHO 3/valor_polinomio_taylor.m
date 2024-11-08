function ya = valor_polinomio_taylor(xp, c , xi)

% f(x) = f(xi)  + (f'(xi)/1!) (x-xi) +  (f''(xi)/2!) (x-xi)² + (f'''(xi)/3!) (x-xi)³ + ... + (f^(n) (xi)/n!) (x-xi)^n + ...
% f(x) = c(1) 1 + c(2)        (x-xi) +  c(3)         (x-xi)² + c(4)          (x-xi)³ + ... + c(n+1)          (x-xi)^n 

   % C = coeficientes
   % potenciacao_x = (x-xi)^0 até (x-xi)^n
    n = length(c)-1
    c;
    
    for k = 1 : length(xp)
        potenciacao_x = 1;
        ya(k) = c(1); 
        for i = 1 : n 
            potenciacao_x = potenciacao_x * (xp(k)-xi);
            ya(k) = ya(k) + c(i+1) * potenciacao_x;
        end
    end
    
end