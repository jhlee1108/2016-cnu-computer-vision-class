function homework2_main()
    circbw = imread('circbw.tif');
    circles = imread('circles.tif');
    circlesm = imread('circlesm.tif');
    
    rect = [1,1,1;1,1,1;1,1,1];
    cross = [1,0,1;0,1,0;1,0,1];
    
    dil_rect = mydilation(circbw,rect);
    ero_rect = myerosion(circbw,rect);
    open_rect = myopening(circbw,rect);
    clos_rect = myclosing(circbw,rect); 
    
    dil_cross = mydilation(circbw,cross);
    ero_cross = myerosion(circbw,cross);
    open_cross = myopening(circbw,cross);
    clos_cross = myclosing(circbw,cross);
    
    figure,subplot(2,4,1),imshow(dil_rect), title('dil rect');
    subplot(2,4,2),imshow(ero_rect), title('ero rect');
    subplot(2,4,3),imshow(open_rect), title('open rect');
    subplot(2,4,4),imshow(clos_rect), title('clos rect');
    subplot(2,4,5),imshow(dil_cross), title('dil cross');
    subplot(2,4,6),imshow(ero_cross), title('ero cross');
    subplot(2,4,7),imshow(open_cross), title('open cross');
    subplot(2,4,8),imshow(clos_cross), title('clos cross');
    
    dil_rect = mydilation(circles,rect);
    ero_rect = myerosion(circles,rect);
    open_rect = myopening(circles,rect);
    clos_rect = myclosing(circles,rect); 
    
    dil_cross = mydilation(circles,cross);
    ero_cross = myerosion(circles,cross);
    open_cross = myopening(circles,cross);
    clos_cross = myclosing(circles,cross);
    
    figure,subplot(2,4,1),imshow(dil_rect), title('dil rect');
    subplot(2,4,2),imshow(ero_rect), title('ero rect');
    subplot(2,4,3),imshow(open_rect), title('open rect');
    subplot(2,4,4),imshow(clos_rect), title('clos rect');
    subplot(2,4,5),imshow(dil_cross), title('dil cross');
    subplot(2,4,6),imshow(ero_cross), title('ero cross');
    subplot(2,4,7),imshow(open_cross), title('open cross');
    subplot(2,4,8),imshow(clos_cross), title('clos cross');
    
    dil_rect = mydilation(circlesm,rect);
    ero_rect = myerosion(circlesm,rect);
    open_rect = myopening(circlesm,rect);
    clos_rect = myclosing(circlesm,rect); 
    
    dil_cross = mydilation(circlesm,cross);
    ero_cross = myerosion(circlesm,cross);
    open_cross = myopening(circlesm,cross);
    clos_cross = myclosing(circlesm,cross);
    
    figure,subplot(2,4,1),imshow(dil_rect), title('dil rect');
    subplot(2,4,2),imshow(ero_rect), title('ero rect');
    subplot(2,4,3),imshow(open_rect), title('open rect');
    subplot(2,4,4),imshow(clos_rect), title('clos rect');
    subplot(2,4,5),imshow(dil_cross), title('dil cross');
    subplot(2,4,6),imshow(ero_cross), title('ero cross');
    subplot(2,4,7),imshow(open_cross), title('open cross');
    subplot(2,4,8),imshow(clos_cross), title('clos cross');
    
    
end