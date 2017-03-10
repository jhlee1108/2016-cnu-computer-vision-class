function y = D_8gray_dither(x)

D = [0, 24; 36, 12];
r = repmat(D, 128, 128);
x = double(x);
q = floor(x/36);
x8 = q + (x-36*q>r);
y = uint8(36*x8);