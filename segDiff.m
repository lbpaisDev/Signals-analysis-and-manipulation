function [out]=segDiff(source)
    fDiff=diff(source);
    out=diff(fDiff);
    
    