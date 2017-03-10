function homework4_main()

cameraman = imread('cameraman.tif');

b1 = [10,10,10;
    10,10,10;
    10,10,10];
b2 = [5,20,5;
    20,5,20;
    5,20,5];

    dil_b1 = mydilation_gray(cameraman,b1);
    ero_b1 = myerosion_gray(cameraman,b1);
    open_b1 = myopening_gray(cameraman,b1);
    clos_b1 = myclosing_gray(cameraman,b1); 
    
    dil_b2 = mydilation_gray(cameraman,b2);
    ero_b2 = myerosion_gray(cameraman,b2);
    open_b2 = myopening_gray(cameraman,b2);
    clos_b2 = myclosing_gray(cameraman,b2);
    
    figure,subplot(2,4,1),imshow(dil_b1), title('dil b1');
    subplot(2,4,2),imshow(ero_b1), title('ero b1');
    subplot(2,4,3),imshow(open_b1), title('open b1');
    subplot(2,4,4),imshow(clos_b1), title('clos b1');
    subplot(2,4,5),imshow(dil_b2), title('dil b2');
    subplot(2,4,6),imshow(ero_b2), title('ero b2');
    subplot(2,4,7),imshow(open_b2), title('open b2');
    subplot(2,4,8),imshow(clos_b2), title('clos b2');


end