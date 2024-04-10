clear

a = [1, -1.3, 0.83, -0.681, 0.2285, -0.09675, 0.021125, -0.0019375, 0.0000625];

[x, m] = raizes(a);

f = @(x) (x^8 - 1.3*x^7 + 0.83*x^6 - 0.681*x^5 + 0.2285*x^4 - 0.09675*x^3 + 0.021125*x^2 - 0.0019375*x + 0.0000625);

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
