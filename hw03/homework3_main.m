function homework3_main

in1 = imread('cameraman.tif');
f = zeros(7,7);

out1 = gaussian_filter(f,in1,2);
out2 = unsharp_masking(out1,50);

figure,subplot(1,3,1),imshow(uint8(out1));
subplot(1,3,2),imshow(uint8(out2));
subplot(1,3,3),imshow(in1);