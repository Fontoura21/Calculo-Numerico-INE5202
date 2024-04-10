function A = questao2_1()

    printf("----------Questão 2.1----------\n\n");

    %criando matrizes zeradas
    A = zeros(50);
    B = zeros([50 1]);
    
    n1 = 15;
    n2 = 25;
    n3 = 50;
    
    %preenchendo primeira linha
    A(1, 1) = 3;
    A(1, 6) = 2;
    B(1,1) = 2;
    
    %preenchendo segundo conjunto de linhas
    for i = 2:n1-1
        A(i, i-1) = 1;
        A(i, i) = 3;
        A(i, i+5) = 2;
        B(i, 1) = -2;
    end
    
    %preenchendo terceiro conjunto de linhas
    for i = n1:n2-1
        A(i, i-4) = 2;
        A(i, i) = 4;
        A(i, i+1) = 1;
        B(i, 1) = 3;
    end
    
    %preenchendo vigésima quinta linha
    A(25, 24) = 1;
    A(25, 25) = 6;
    A(25, 29) = -1;
    B(25, 1) = -2;
    
    %preenchendo quarto conjunto de linhas
    for i = n2+1:n3-1
        A(i, i-3) = 1;
        A(i, i-1) = 1;
        A(i, i) = 7;
        A(i, i+1) = 2;
        B(i, 1) = 5;
    end
    
    %preenchimento da ultima linha
    A(50, 40) = 2;
    A(50, 50) = 5;
    B(50, 1) = -5;
    
    %matriz A pronta
    printf("a): Matriz armazenada em A\n\n");
    
    %aplicação do método
    printf("b):\n");
    X = fgauss(A, B);
    X
    
    %calculo do residuo
    residuo = max(abs((A * X) - B))
    
    %número de operações
    num_operacoes = (4*n3**3 + 9*n3**2 - n3 - 6)/6;
    printf("\nc): Numero de operacoes = %d\n", num_operacoes);
    
    A = [A B];
    printf('\n');
    printf('\n');
    
end