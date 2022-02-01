function [entrOut]=entropia(fonte)
    alfabeto=unique(fonte);
    ocur=zeros(length(alfabeto),1);
    for i=1:1:size(fonte,1)*size(fonte,2)
        for j=1:1:length(alfabeto)
            if fonte(i)==alfabeto(j)
                ocur(j)=ocur(j)+1;
            end
        end
    end
    den=sum(ocur);
    prob=zeros(length(ocur),1);
    for k=1:1:length(ocur)
        prob(k)=ocur(k)/den;
    end
    entrOut=0;
    for l=1:1:length(prob)
        entrOut= entrOut + (-prob(l)*log2(prob(l)));
    end
    
        
    
    
    