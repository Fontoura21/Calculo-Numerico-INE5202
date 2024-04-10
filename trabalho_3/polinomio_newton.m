function ya = polinomio_newton(xp, x, c);

	n = length(c) - 1;

	for (k = 1:length(xp))
	
		potenciacao_x = 1;
		
		ya(k) = c(1);
		
		for (i = 1:n)
		
			potenciacao_x = potenciacao_x * (xp(k) - x(i));
			
			ya(k) = ya(k) + c(i+1) * potenciacao_x;
			
		end
		
	end

end
