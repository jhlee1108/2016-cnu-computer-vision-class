function homework2_main()

f1 = repmat([100 200; 100 200],4,4);

out1 = DFT_2D(f1);
out2 = fft2(f1);

figure,subplot(1,2,1), fftshow(out1);
subplot(1,2,2), fftshow(fftshift(out1));

figure,subplot(1,2,1), fftshow(out2);
subplot(1,2,2), fftshow(fftshift(out2));