function out = myclosing_gray(input, mask)
    out = mydilation_gray(input,mask);
    out = myerosion_gray(out,mask);
end