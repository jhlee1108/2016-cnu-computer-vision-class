function homework2_main

in1 = imread('newborn.tif');
in2 = imread('cameraman.tif');
out1 = jarvis(in1);
out2 = jarvis(in2);
out3 = stucki(in1);
out4 = stucki(in2);

figure,imshow(out1);
figure,imshow(out2);
figure,imshow(out3);
figure,imshow(out4);
