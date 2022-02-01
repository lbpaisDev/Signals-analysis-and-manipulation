function [huff,dicio] = Huff(fonte)
    alfabeto = unique(fonte);
    num=length(alfabeto);
    %calcular a ocureencias de cada simbolo
    ocur=zeros(length(alfabeto),1);
    for j = 1: 1: length(alfabeto)
        for i= 1: 1: size(fonte,1)
            if fonte(i) == alfabeto(j)
                ocur(j) = ocur(j)+ 1;
            end
        end
    end
    %calcular a probabilidade de cada simbolo
    den = sum(ocur);
    prob = zeros(length(ocur),1);
    for k = 1: 1: length(ocur)
        prob(k) = ocur(k)/den;
    end
    %Cria um dicionario de huffman baseado nos simbolos e nas suas
    %probabilidades
   dicio = huffmandict(alfabeto, prob);
   huff = huffmanenco(fonte,dicio);


    
    