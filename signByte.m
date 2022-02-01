function [signBytes,array]=signByte(source)
signbits = zeros(length(source),1);
array = zeros(length(source),1);
for i=1:1:length(source)
    if (source(i)<0)
        signbits(i)= 1;
        array(i) = source(i)*(-1);
    else
        signbits(i)= 0;
        array(i) = source(i);
    end
end
signBytes = zeros(length(source),1);
for i=1:1:floor(length(source))
        signBytes(i) = signbits(i);
end
