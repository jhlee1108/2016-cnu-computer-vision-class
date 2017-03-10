function out = imhisteq_func(im)

height = size(im,1);
width = size(im,2);
t = 255*imcdf(im);

for i=1:height,
    for j=1:width,
        s = im(i,j);
        if s ~= 0
            im(i,j) = t(s);
        end
    end
end

out = im;