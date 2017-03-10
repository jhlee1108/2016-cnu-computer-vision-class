function out = mydilation_gray(input, mask)
[H W] = size(input);
[m_h m_w] = size(mask);
a = floor(m_h/2);
b = floor(m_w/2);
zero_padding = zeros(H+a*2,W+a*2);
out = zero_padding;
zero_padding(1+a:H+a,1+b:W+b) = input;

for i = 1 + a : H + a
    for j = 1 + b : W + b
        temp = zero_padding(i-a:i+a,j-b:j+b) + mask;
        out(i,j) = max(temp(:));
    end
end

out = uint8(out(1+a:H+a,1+b:W+b));

end