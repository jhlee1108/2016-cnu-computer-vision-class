function out = myopening(input, mask)
    out = myerosion(input,mask);
    out = mydilation(out,mask);
end