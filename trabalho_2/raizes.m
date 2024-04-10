function [x, M] = raizes(a)

    grau = length(a) - 1;
    
    k = 0;
    
    while grau > 0
    
        k = k + 1;
        
        raio = 1 + max(abs(a(2 : grau + 1))) / abs(a(1));
        
        Xi(k) = complex(0.1 * raio, 0.1 * raio);
        
        [x(k), M(k)] = polinomios(grau, a, Xi(k));
        
        [grau, a] = reduzir_grau(a, grau, x(k), M(k));
        
    end
    
end