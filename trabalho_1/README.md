1). Faça o armazenamento dos números decimais abaixo em variável float (single) e double, nesse link VPL.
Imprima o respectivo s, e, f, em binário ( calculados manualmente), do armazenamento em float (single) e em double;
Imprima-os com 20 dígitos decimais significativos, em  float e double.
Imprima o erro estimado de arredondamento percentual gerado:
1a). -20.125;
1b). -60.06.
2.1). Dado o sistema de equações lineares abaixo para n3 equações:

n1=15; n2=25; n3=50;

i=1               #                                           3*x(i) +                     2*x(i+5) = 2 
for i=2:n1-1      #                                  x(i-1) + 3*x(i) +                     2*x(i+5) = -2 
for i=n1:n2-1     #              2*x(i-4) +                   4*x(i) + x(i+1)                       = 3 
i=n2              #                                  x(i-1) + 6*x(i) -            x(i+4)            = -2 
for i=n2+1:n3-1   #                         x(i-3) + x(i-1) + 7*x(i) + 2*x(i+1)                     = 5 
i=n3              # 2*x(i-10) +                               5*x(i)                                = -5 

2.1a). Armazene o sistema acima em forma de matriz completa (não imprima);
2.1b). Resolva o sistema acima por um método direto construído em aula. Imprima a solução e o resíduo máximo das equações;
2.1c). Imprima o número total de operações com números reais (em PONTO FLUTUANTE) utilizadas;


2.2). O sistema acima possui muitos coeficientes nulos, pois cada incógnita se relaciona apenas com uma vizinhança próxima, gerando uma matriz esparsa de coeficientes. Nesses casos devemos tentar armazenar e operar apenas os coeficientes não nulos, usando por exemplo, métodos iterativos.

2.2a). Demostre/Imprima que o sistema acima tem convergência garantida por métodos iterativos;
2.2b). Resolva o sistema acima por um método iterativo construído em aula, a partir da matriz completa (operar somente os coeficientes não nulos), com o menor número de iterações (escolha um fator de relaxação adequado) e operações possível, COM PRECISÃO DE 6 DÍGITOS EXATOS DEPOIS DA VIRGULA. Imprima a solução e o resíduo máximo das equações.
Obs.: Para operar somente os coeficientes não nulos: crie uma lista de posições dos coeficientes NÃO NULOS NN(i,j), que indique para cada linha i quais colunas j são não nulas;
2.2c). Imprima o número total de operações com números reais (em PONTO FLUTUANTE) utilizadas.
