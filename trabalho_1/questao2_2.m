function questao2_2()

    printf("----------Questao 2.2----------\n\n");
    
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
    
    %calcular alfa
    for i = 1 : n3
    	soma = sum(A(i, 1:n3) .* A(i, 1:n3));
    	alfa(i) = sqrt(soma);
    end
    
    %calcular determinante normalizado
    det_norma_A = det(A) / prod(alfa(1:n3))
    
    maior_igual = true;
    maior = false;
    
    for i = 1 : n3
        pivo = A(i,i);
        soma_linha = sum(A(i, 1:n3)) - pivo;
        
        if soma_linha > abs(pivo)
            maior_igual = false;
            break;
        end
        
        if abs(pivo) > soma_linha
            maior = true;
        end
    end
    
    if (maior_igual && maior)
        printf("a): Convergência garantida.\n\n")
    else
        printf("a): Convergência não garantida.\n\n")
    end
    
    %aplicação do método + contagem de operações
    X = fgauss_seidel(A, B);
    
    %calculo do X
    printf("b):\n");
    X
    
    %calculo do residuo
    residuo = max(abs((A * X) - B))
    
    printf("\n------------------------\n\n")
    
end