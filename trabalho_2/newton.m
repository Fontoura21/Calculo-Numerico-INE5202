function raizes = newton(f, a, b, passos)
    
    p = abs(b - a)/passos;
    
    X = a : p : b;
    Y = f(X);
    
    n_raizes= 0;
    
    for i = 1 : passos
    
        if Y(i) * Y(i+1) <= 0 && abs(Y(i)) + abs(Y(i+1)) < 1 
        
            n_raizes = n_raizes + 1;
            X_i(n_raizes) = 0.5 * (X(i) + X(i+1));
        
        end
    
    end
    
    
    for i = 1 : n_raizes
        
        dx = 1e-5;
        iteracao = 0;
        
        while abs(dx) > 1e-10 && iteracao < 1000

            iteracao = iteracao + 1;
            df = (f(X_i(i) + dx) - f(X_i(i)))/dx;
            dx = -f(X_i(i)) / df; 
            Xf(i) = X_i(i) + dx;
            
        end
        
    end
    
 raizes = Xf;
 
end