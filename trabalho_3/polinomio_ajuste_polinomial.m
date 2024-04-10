function ya = polinomio_ajuste_polinomial(xp, c)

	n = length(c) - 1;

	for (k = 1:length(xp))
	
		potenciacao_x = 1;
		
		ya(k) = c(1);
		
		for (i = 1:n)
		
			potenciacao_x = potenciacao_x * xp(k);
			
			ya(k) = ya(k) + potenciacao_x * c(i+1);
			
		end
		
	end
	
end
