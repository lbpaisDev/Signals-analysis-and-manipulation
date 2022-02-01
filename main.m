fonte=tableRead("PPG_norm.csv");
fprintf("Entropia do sinal original: %f\n",entropia(fonte));
filtrado=lowpass(fonte,18,100);
fprintf("Entropia do sinal filtrado: %f\n",entropia(filtrado));
final=moveToFront(filtrado);
fprintf("Entropia do sinal ap�s MTF: %f\n",entropia(final));
%subplot(2,1,1);
%plot(fonte);
%subplot(2,1,2);
%plot(filtrado);
dif=segDiff(final);
fprintf("Entropia do sinal ap�s as segundas diferen�as: %f\n",entropia(dif));
[signArray,sign]=signByte(dif);
fprintf("Entropia do sinal ap�s o signbyte: %f\n",entropia(sign));
[huffman,dic]=Huff(dif);
fprintf("Entropia do sinal ap�s Huffman: %f\n",entropia(huffman));
csvwrite('final.csv',huffman);

