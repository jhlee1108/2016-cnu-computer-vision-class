function homework1_main()

in1 = imread('cameraman.tif');

out1 = up_sampling(in1,2,'nearest');
out2 = imresize(in1,2,'nearest');
out3 = up_sampling(in1,2,'bilinear');
out4 = imresize(in1,2,'bilinear');

figure,subplot(1,2,1),imshow(uint8(out1));
subplot(1,2,2),imshow(uint8(out2));
figure,subplot(1,2,1),imshow(uint8(out3));
subplot(1,2,2),imshow(uint8(out4));