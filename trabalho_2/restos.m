function R = restos(grau, a, xi)

    temp = grau;
    
    for k = 1 : grau
        
        b(1) = a(1);
        
        for i= 2 : temp + 1
        
            b(i) = a(i) + xi * b(i-1); 
        
        end
        
        R(k) = b(temp + 1); 
        
        temp = temp - 1;
        
        a = b(1 : temp+1);
    
    end
    
    R(grau+1) = a(1);

end