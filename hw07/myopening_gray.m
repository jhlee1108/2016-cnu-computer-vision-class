function out = myopening_gray(input, mask)
    out = myerosion_gray(input,mask);
    out = mydilation_gray(out,mask);
end