function x = questao2_polinomial()

    fprintf("\nQuestão 2 polinomial:\n\n")

	x = [1.2 , 1.5, 2   , 4  , 6   , 10 , 15  ];
	y = [0.45, 0.4, 0.33, 0.2, 0.14, 0.1, 0.06];

	xp = min(x):0.01:max(x);

	warning off;
	
	for (i = 1:6)
	
		n = i;
		
		c = coeficientes_ajuste_polinomial(x, y, n);
		
		ya = polinomio_ajuste_polinomial(x, c);
		
		desvio_quadratico = sum((ya - y).^2);
		
		fprintf("Desvio quadrático para grau %d = %f\n", i, desvio_quadratico)
		
		if (i == 4)
		    yp = polinomio_ajuste_polinomial(xp, c);
		    figure; plot(x, y, "g*"); hold on;
	        plot(xp, yp, "b-");
	        title("questao2 polinomial N = 4");
	        hold off;
	    end
	    
	    if (i == 5)
	        yp = polinomio_ajuste_polinomial(xp, c);
		    figure; plot(x, y, "g*"); hold on;
	        plot(xp, yp, "b-");
	        title("questao2 polinomial N = 5");
	        hold off;
	    end
	
	end

	fprintf("\nApesar do menor desvio quadrático ser do grau 5, devido a sua alta distorção e do, também baixo, desvio do polinômio do grau 4, esse último é o melhor ajuste.\n")
	fprintf("\n------------------------\n")
	
end