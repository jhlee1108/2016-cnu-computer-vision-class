function homework1_main

in1 = imread('cameraman.tif');
in2 = imread('newborn.tif');
out1 = D_8gray_dither(in1);
out2 = D_8gray_dither(in2);
figure,imshow(out1);
figure,imshow(out2);