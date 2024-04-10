function x = questao1_b()

    fprintf("\nQuestão 1b)\n\n")

	a = 0;
	
	b = pi/2;

	n = 4
	
	h = (b - a)/n;
	x = a:h:b;
	y = x .* cos(x);

	hp = (b - a)/100;
	xp = a:hp:b;
	yp = xp .* cos(xp);

	c = coeficientes_newton(x, y, n)
	ya = polinomio_newton(xp, x, c);

	erro_max = max(abs(yp - ya))
	
	fprintf("\n------------------------\n")
	
end
