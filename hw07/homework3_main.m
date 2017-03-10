function homework3_main()
A = magic(6);

b1 = [10,10,10;
    10,10,10;
    10,10,10];
b2 = [5,20,5;
    20,5,20;
    5,20,5];

b1_dil = mydilation_gray(A,b1)
b1_ero = myerosion_gray(A,b1)

b2_dil = mydilation_gray(A,b2)
b2_ero = myerosion_gray(A,b2)

end