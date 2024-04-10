function x = questao4()

    fprintf("\nQuestão 4)\n\n")
	
	fprintf("Ver figura 5.\n");

    fprintf("\n------------------------\n")

	x = [0.5  0.6      0.8         1; 
	       1  0.83333  0.66666   0.5; 
	     0.6  0.7      0.9         1];

	y=[   0    0    0     0; 
	      0  -40  -80  -120; 
	    -45  -45  -45   -45];

	for n = 1:size(x,1) 
	
		m = 4;
		
		x(n, m + 1) = x(n, 1);
		
		y(n, m + 1) = y(n, 1);	
		
		steps = 100;
		
		h = 1 / steps;
		
		t = 0;
		
		cx = 3 * (x(n, 2) - x(n, 1));
		
		bx = 3 * (x(n, 3) - x(n, 2))  -cx;
		
		ax = (x(n, 4) - x(n, 1)) - (cx + bx);
		
		cy = 3 * (y(n, 2) - y(n, 1));
		
		by = 3 * (y(n, 3) - y(n, 2)) - cy;
		
		ay = (y(n, 4) - y(n, 1)) - (cy + by);
		
		for i = 1:steps + 1
		
		   xx(n, i) = x(n, 1) + t * (cx + t * (bx + t * ax));
		   
		   yy(n, i) = y(n, 1) + t * (cy + t * (by + t * ay));
		   
		   t += h;
		   
		end
		
	end

    figure;
    
	plot( x(1,:) ,  y(1,:) , '*b' , 'markersize' , 10, x(1,:) , y(1,:) , '--r'); hold on;
	plot( x(2,:) ,  y(2,:) , '*b' , 'markersize' , 10, x(2,:) , y(2,:) , '--r'); hold on;
	plot( x(3,:) ,  y(3,:) , '*b' , 'markersize' , 10, x(3,:) , y(3,:) , '--r'); hold on;
	
	plot(xx(1,:) , yy(1,:) , '-r' , 'linewidth', 10)
	plot(xx(2,:) , yy(2,:) , '-r' , 'linewidth', 10)
	
	p = plot(xx(3,:) , yy(3,:) , '-r' , 'linewidth' , 10);

	hold on;
	grid on;
	
end
