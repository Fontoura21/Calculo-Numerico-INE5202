clear

f = @(x) (sin(x).^3 .* cos(x).^3 + 0.1);

a = -6;

b = 6;

passos = 200;

raizes = newton(f, a, b, passos);

fprintf("\n")

for i = 1 : length(raizes)

    fprintf("Raiz %d = %f\n\n", i, raizes(i))

end

Residuo = max(abs(f(raizes)))
