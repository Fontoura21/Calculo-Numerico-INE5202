clear

a = [1, complex(0, -2), -1.5, complex(0, 0.5), 0.0625];

[x, m] = raizes(a);

f = @(x) (1*x^4 + complex(0, -2)*x^3 - 1.5*x^2 + complex(0, 0.5)*x + 0.0625);

printf("\nForma fatorada:\n\nf(x) = ")

for i = 1:length(x)

    if imag(x(i)) == 0
    
        fprintf("(x - %.2f)**%d", real(x(i)), m(i));
    
    else
    
        fprintf("(x - (%.2f + %.2fi))**%d", real(x(i)), imag(x(i)), m(i))
        
    end

    if i < length(x)
    
        fprintf(" * ")
    
    end
    
end

fprintf("\n\n")

for i = 1 : length(x)

    fprintf("Raiz %d = %f %fi (Multiplicidade: %d)\n\n", i, real(x(i)), imag(x(i)), m(i))

end

for i = 1 : length(x)

    residuo = f(x(i));

end

Residuo = max(abs(residuo))
