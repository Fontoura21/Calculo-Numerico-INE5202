function X = newton_sistema(f1, f2, f3, Xi)
    
    delta_x = [1e-5, 1e-5, 1e-5];
    
    iteracao = 0;
    
    while sum(abs(delta_x)) > 1e-10 && iteracao < 1000
    
        iteracao = iteracao + 1;
        
        A(1,1) = (f1([ Xi(1) + delta_x(1); Xi(2)             ; Xi(3)             ; ]) - f1(Xi) ) / delta_x(1);
        A(1,2) = (f1([ Xi(1)             ; Xi(2) + delta_x(2); Xi(3)             ; ]) - f1(Xi) ) / delta_x(2);
        A(1,3) = (f1([ Xi(1)             ; Xi(2)             ; Xi(3) + delta_x(3); ]) - f1(Xi) ) / delta_x(3);
        
        A(2,1) = (f2([ Xi(1) + delta_x(1); Xi(2)             ; Xi(3)             ; ]) - f2(Xi) ) / delta_x(1);
        A(2,2) = (f2([ Xi(1)             ; Xi(2) + delta_x(2); Xi(3)             ; ]) - f2(Xi) ) / delta_x(2);
        A(2,3) = (f2([ Xi(1)             ; Xi(2)             ; Xi(3) + delta_x(3); ]) - f2(Xi) ) / delta_x(3);
        
        A(3,1) = (f3([ Xi(1) + delta_x(1); Xi(2)             ; Xi(3)             ; ]) - f3(Xi) ) / delta_x(1);
        A(3,2) = (f3([ Xi(1)             ; Xi(2) + delta_x(2); Xi(3)             ; ]) - f3(Xi) ) / delta_x(2);
        A(3,3) = (f3([ Xi(1)             ; Xi(2)             ; Xi(3) + delta_x(3); ]) - f3(Xi) ) / delta_x(3);
        
        B = - [f1(Xi) ; f2(Xi) ; f3(Xi);];
        
        delta_x = A \ B;
        
        X = Xi + delta_x;
        
        Xi = X;
        
    end

end
