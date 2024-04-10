function x = questao1_a()

    fprintf("\nQuestão 1a)\n\n")

	a = 0;
	
	b = pi/2;

	c =  [(sqrt(2)*pi)/8,
		(sqrt(2)/2)*(1-pi/4),
		(-sqrt(2)/2)*(1+ pi/8),
		(sqrt(2)/12)*(-3+pi/4),
		(sqrt(2)/48)*(4+pi/4)]

	n = length(c) - 1

	xi = (a + b)/2;

	h = (b - a)/100;
	
	xp = a:h:b;

	ye = xp .* cos(xp);
	
	ya = polinomio_taylor(xp, c, xi);

	erro_max = max(abs(ya - ye))
	
	fprintf("\n------------------------\n")
	
end

