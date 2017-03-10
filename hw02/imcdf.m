function out = imcdf(im)

height = size(im,1);
width = size(im,2);

[x,y] = imhist(im);
x = imdivide(x,height*width);
out = cumsum(x);