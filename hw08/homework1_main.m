function homework1_main
in1 = imread('cameraman.tif');
 
tic
dict = myhuffmandict(in1);
toc
tic
e = myhuffmanenco(in1,dict);
toc
tic
d = myhuffmandeco(e,dict);
toc

[H W] = size(in1);
result = uint8(zeros(H,W));
n=1;
for i=1 : H
    for j=1 : W
        result(i,j) = uint8(d(n));
        n=n+1;
    end
end

whos in1 result e

subplot(1,2,1),imshow(in1);
subplot(1,2,2),imshow(result);