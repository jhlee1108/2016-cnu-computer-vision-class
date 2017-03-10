function out = myclosing(input, mask)
    out = mydilation(input,mask);
    out = myerosion(out,mask);
end