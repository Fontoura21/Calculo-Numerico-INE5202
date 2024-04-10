function questao1()

    printf("----------Questao 1----------\n\n");
    
    printf("a): -20.125\n");
    a = -20.125;
    
    printf("s = 1\n");
    printf("e = 10000011\n");
    printf("f = 01000010000000000000000\n");
    
    a_float = single(a);
    printf("a em float: %.20f\n", a_float);
    
    a_double = double(a);
    printf("a em double: %.20f\n", a_double);
    
    erro_a = abs((double(a_float) - a_double) / a_double) * 100;
    printf("Erro percentual para a em float: %.20f\n\n", erro_a);
    

    printf("b): -60.06\n");
    b = -60.06;
    
    printf("s = 1\n");
    printf("e = 10000100\n");
    printf("f = 11100000011110101110001\n");
    
    b_float = single(b);
    printf("b em float: %.20f\n", b_float);
    
    b_double = double(b);
    printf("b em double: %.20f\n", b_double);
    
    erro_b = abs((double(b_float) - b_double) / b_double) * 100;
    printf("Erro percentual para b em float: %.20f\n\n\n", erro_b);
    
end