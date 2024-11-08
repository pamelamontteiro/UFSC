function xi = localizacao(f, dominio)

    numero_intervalos = 1000; %numero intervalo: o numero_intervalos é o tanto que vou pular. Ex: subdominio = [1,5] com numero_intervalos = 2 retorna x = 1, 3 e 5
    
    h = (dominio(2)-dominio(1))/numero_intervalos; %h = numero de intervalos de x
    x = dominio(1):h:dominio(2);
    y = f(x);
 %verificando como eliminar falsos valores iniciais de raízes (pontos de descontinuidade)   
    indice_raiz = 0;%%%%%% O QUE SERIA ESSE INDICE_RAIZ ?
    limite = 0.1/h; 
    
    for i = 1:length(x)-1 %varremos x até o penultimo, pois no ultimo x não existe próximo valor para comparar os sinais 
        
        if( y(i)*y(i+1)) <= 0 && abs(y(i) - y(i+1)) < limite
        i;
        indice_raiz +=1;
        xi(indice_raiz) = (x(i) + x(i+1)) *0.5; %tirar impressão dps
        end %if
    end %for
    xi; %tirar impressao dps
    end
        