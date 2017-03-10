function homework1_main

in1 = imread('cameraman.tif');
f = ones(5,5)/25;

out1 = filter2_revision(f,in1,'zero');
out2 = filter2_revision(f,in1,'mirror');

figure,imshow(in1);
figure,imshow(uint8(out1));
figure,imshow(uint8(out2));