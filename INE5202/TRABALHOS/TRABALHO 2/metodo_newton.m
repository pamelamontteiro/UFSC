function raiz = metodo_newton(f, dominio)
    
    % Localização das raízes iniciais:
    
    xi = localizacao(f, dominio);
    
   %refinamento do valor da raiz inicial xi (série de Taylor) 
    %o indice indica para qual raiz estou efetuando (raiz 1, raiz 2)
    for indice = 1 : length(xi)
        delta_x = 1e-5;  % valor pequeno para a derivada ser o mais prox possivel do valor
        repeticoes = 0;
        while abs(delta_x) > 1e-10 && repeticoes < 100  %enquanto delta_x for grande e repeticoes for pequena
            
            repeticoes = repeticoes + 1;
            
            derivada_f = (f(xi(indice) + delta_x) - f(xi(indice)))/delta_x; %ou seja, limite com delta x tendendo a zero
            
            delta_x = - f(xi(indice))/derivada_f;
            
            raiz(indice) = xi(indice) + delta_x;  %aproximação da raiz
            
            xi(indice) = raiz(indice);
    
        end
        
        repeticoes;
    
    end