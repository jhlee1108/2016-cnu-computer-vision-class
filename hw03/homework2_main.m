function homework2_main

in1 = imread('cameraman.tif');
f = zeros(11,11);
tic
out1 = gaussian_filter(f,in1,5);
toc
tic
f2 = fspecial('gaussian',11,5);
out2 = filter2(f2,in1);
toc
figure,imshow(uint8(out1));
figure,imshow(uint8(out2));