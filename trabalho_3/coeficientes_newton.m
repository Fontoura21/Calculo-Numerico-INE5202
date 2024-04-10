function c = coeficientes_newton(x, y, n);

	for (i = 1:n)
	
		delta_y(i,1) = (y(i + 1) - y(i)) / (x(i + 1) - x(i));
		
	end
	

	for (k = 2:n)
	
		for (i = 1:(n + 1 - k))
		
			delta_y(i,k) = (delta_y(i + 1, k - 1) - delta_y(i, k - 1)) / (x(i + k) - x(i));
			
		end
		
	end

	c = [y(1), delta_y(1, 1:n)];
	
end
