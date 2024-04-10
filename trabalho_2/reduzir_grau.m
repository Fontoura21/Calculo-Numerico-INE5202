function [n_grau, a] = reduzir_grau(a, n_grau_inicial, x, M)

    n_grau = n_grau_inicial;
    
    for k=1 : M

        b(1) = a(1);
        for i=2 : n_grau+1
            b(i) = a(i) + x * b(i-1);
        end

        n_grau = n_grau - 1;
        a = b(1 : n_grau+1);
    end
    
end