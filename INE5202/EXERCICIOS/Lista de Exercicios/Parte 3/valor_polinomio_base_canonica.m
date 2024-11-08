function ya = valor_polinomio_base_canonica(xp, a)

% g(x) = a(1) + a(2)*x + a(3)*x² + ...+ a(n+1)*x^(n)
% a = coeficientes
   % potenciacao_x = (x)^0 até (x)^n
    n = length(a)-1
    for k = 1 : length(xp)
        potenciacao_x = 1;
        ya(k) = a(1); 
        for i = 1 : n 
            potenciacao_x = potenciacao_x * ( xp(k) );
            ya(k) = ya(k) + a(i+1) * potenciacao_x;
        end
    end
    
end