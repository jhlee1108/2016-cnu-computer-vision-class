function out = adaptive_filter(input, s)
H = size(input,1);
W = size(input,2);
out = zeros(H,W);
m = zeros(H,W);
V = zeros(H,W);
s = floor(s/2);
z = zeros(H+2*s,W+2*s);
z(1+s:H+s,1+s:W+s)=input;

for i=1:H
    for j=1:W
        m(i,j) = mean(mean(z(i:i+2*s,j:j+2*s)),2);
        V(i,j) = variance(z(i:i+2*s,j:j+2*s));
    end
end

n = sum(V(:))/(H*W);

for i=1:H
    for j=1:W
        out(i,j) = m(i,j)+max(0,V(i,j)-n)/max(V(i,j),n)*(input(i,j)-m(i,j));
    end
end

figure, subplot(1,2,1), imshow(uint8(m));
subplot(1,2,2), imshow(uint8(out));

end

function out = variance(input)
    h = size(input,1);
    w = size(input,2);
    y = zeros(1,h*w);
    
    for i=1:h
        y(1,1+(i-1)*w:i*w) = input(i,:);
    end
    out = std(y)^2;
end