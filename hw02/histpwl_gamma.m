function y = histpwl_gamma(im,a,b,r)

classChanged = 0;
if ~isa(im, 'double'),
    classChanged = 1;
    im = im2double(im);
end

if length(a) ~= length(b)
    error('Vectors A and B must be of equal size');
end

N=length(a);
y=zeros(size(im));

for i=1:N-1
    pix=find(im>=a(i) & im<a(i+1));
    y(pix)=((im(pix)-a(i))/(a(i+1)-a(i))).^r*(b(i+1)-b(i))+b(i);
end

pix=find(im==a(N));
y(pix)=b(N);

if classChanged==1
    y = uint8(255*y);
end