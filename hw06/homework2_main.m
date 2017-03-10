function homework2_main()

in1 = imread('twins.tif');
in1 = rgb2gray(in1);
in1 = imnoise(in1,'gaussian',0,0.005);
out1 = adaptive_filter(in1,7);
figure, subplot(1,2,1), imshow(wiener2(in1, [7,7]));
subplot(1,2,2), imshow(uint8(out1));
