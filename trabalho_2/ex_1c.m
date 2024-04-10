clear

a = [1, -11.3, 50.83, -114.581, 132.9985, -72.57875, 14.865625, -1.2734375, 0.0390625];

[x, m] = raizes(a);

f = @(x) (x^8 - 11.3*x^7 + 50.83*x^6 - 114.581*x^5 + 132.9985*x^4 - 72.57875*x^3 + 14.865625*x^2 - 1.2734375*x + 0.0390625);

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