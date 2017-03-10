function homework2_main()

in1 = imread('cameraman.tif');

out1 = myrotate(in1,30,'nearest');
out2 = imrotate(in1,30,'nearest');
out3 = myrotate(in1,30,'bilinear');
out4 = imrotate(in1,30,'bilinear');

figure,subplot(1,2,1),imshow(uint8(out1));
subplot(1,2,2),imshow(uint8(out2));
figure,subplot(1,2,1),imshow(uint8(out3));
subplot(1,2,2),imshow(uint8(out4));