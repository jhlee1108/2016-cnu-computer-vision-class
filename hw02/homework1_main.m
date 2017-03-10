function homework1_main()

in1 = imread('tire.tif');
out1 = histpwl_gamma(in1,[0 .5 1],[0 .3 1],0.5);
out2 = histpwl_gamma(in1,[0 .5 1],[0 .3 1],1.5);

figure, imshow(in1);
figure, imshow(out1);
figure, imshow(out2);
