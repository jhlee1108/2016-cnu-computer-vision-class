function out = unsharp_masking(input, a)

f = [-a/(a+1) (a-1)/(a+1) -a/(a+1);
    (a-1)/(a+1) (a+5)/(a+1) (a-1)/(a+1);
    -a/(a+1) (a-1)/(a+1) -a/(a+1)];

out = filter2(f,input);