function homework1_main()
f1 = repmat([100, 200], 1, 4);
f2 = [100, 100, 100, 100, 200, 200, 200, 200];

out1 = DFT_1D(f1)
out2 = DFT_1D(f2)
out3 = fft(f1)
out4 = fft(f2)