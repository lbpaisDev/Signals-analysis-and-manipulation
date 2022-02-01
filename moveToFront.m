function output = moveToFront(fonte)
    alfabeto = unique(fonte);
    output = zeros(length(fonte),1);
    for n=1:length(fonte)
        simbolo = fonte(n);
        index = find(alfabeto==simbolo,1);
        alfabeto = alfabeto([1:index-1,index+1:end]);
        alfabeto(2:end+1) = alfabeto;
        alfabeto(1) = simbolo;
        output(n) = index;
    end
end 