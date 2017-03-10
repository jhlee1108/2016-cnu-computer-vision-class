function homework2_main()

in1 = imread('tire.tif');
out1 = imhisteq_func(in1);

figure, imshow(in1);
figure, imshow(out1);