function x = newtonsis3(xi, f1, f2, f3)

    k = 0;
    delta_x = [1e-10; 1e-10; 1e-10];
    % xi = [1; -1; 1]; % Valor inicial real (nao convergiu)
    % xi = [complex(1,1); complex(1,1); complex(1,1)]
    while max(abs(delta_x)) > 1e-14 && k < 100
        k = k + 1;
        
        % Calculo numerico das derivadas parciais 
        % (pela definicao da matriz jacobiana)
        % Linha 1:
        A(1,1)=(f1([xi(1)+delta_x(1); xi(2)           ; xi(3)           ])-f1(xi))/delta_x(1);
        A(1,2)=(f1([xi(1)           ; xi(2)+delta_x(2); xi(3)           ])-f1(xi))/delta_x(2);
        A(1,3)=(f1([xi(1)           ; xi(2)           ; xi(3)+delta_x(3)])-f1(xi))/delta_x(3);
        % Linha 2:
        A(2,1)=(f2([xi(1)+delta_x(1); xi(2)           ; xi(3)           ])-f2(xi))/delta_x(1);
        A(2,2)=(f2([xi(1)           ; xi(2)+delta_x(2); xi(3)           ])-f2(xi))/delta_x(2);
        A(2,3)=(f2([xi(1)           ; xi(2)           ; xi(3)+delta_x(3)])-f2(xi))/delta_x(3);
        % Linha 3:
        A(3,1)=(f3([xi(1)+delta_x(1); xi(2)           ; xi(3)           ])-f3(xi))/delta_x(1);
        A(3,2)=(f3([xi(1)           ; xi(2)+delta_x(2); xi(3)           ])-f3(xi))/delta_x(2);
        A(3,3)=(f3([xi(1)           ; xi(2)           ; xi(3)+delta_x(3)])-f3(xi))/delta_x(3);

        B = -[f1(xi); f2(xi); f3(xi)];
        
        delta_x = A \ B;
        x = xi + delta_x;
        xi = x;
    end
    repeticoes_newtonsis3 = k

endfunction