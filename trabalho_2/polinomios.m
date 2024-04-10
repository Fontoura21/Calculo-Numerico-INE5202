function [x, M] = polinomios(n_grau, a, xi)

    contador_repeticoes = 0;
    
    delta_x = 1e-5;
    
    while max(abs(delta_x)) > 1e-14 && contador_repeticoes < 100
    
        contador_repeticoes = contador_repeticoes + 1;
        
        R = restos(n_grau, a, xi);
        
        M = 1;
        
        soma_restos = sum(abs(R(1:2)));
        
        while soma_restos < 1e-5
        
            M = M + 1;
        
            soma_restos = soma_restos + abs(R(M+1));
        
        end
        
        delta_x = -R(M) / (M * R(M+1));
        
        x = xi + delta_x;
        
        xi = x;
    
    end

end
