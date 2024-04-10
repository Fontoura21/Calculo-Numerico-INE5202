clear

f1 = @(x) ( sin(x(1)) * cos(x(2)) + x(3) - 1.5 );

f2 = @(x) ( x(1)^2 + x(2)^2 + x(3)^2 - 3.0 );

f3 = @(x) ( x(1) + x(2) + x(3) - 3.1 );

Xi = [complex(2, 1); complex(-1, 1); complex(1, 1);];

X = newton_sistema(f1, f2, f3, Xi);

for i = 1 : length(X)
    
    fprintf("X%d = %f %fi\n\n", i, real(X(i)), imag(X(i)))
    
end

Residuo = max(abs([f1(X), f2(X), f3(X)]))

fprintf("\n")
