function homework1_main()

in1 = imread('twins.tif');
in1 = rgb2gray(in1);
in1 = imnoise(in1,'salt & pepper',0.01);

out1 = median_filter(in1,3);
out2 = medfilt2(in1, [3,3]);
out3 = median_filter(in1,5);
out4 = medfilt2(in1, [5,5]);
figure,subplot(1,2,1), imshow(out1);
subplot(1,2,2), imshow(out2);
figure,subplot(1,2,1), imshow(out3);
subplot(1,2,2), imshow(out4);