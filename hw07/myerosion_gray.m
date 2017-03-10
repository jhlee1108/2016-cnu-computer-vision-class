function out = myerosion_gray(input, mask)
[H W] = size(input);
[m_h m_w] = size(mask);
a = floor(m_h/2);
b = floor(m_w/2);
padding = zeros(H+a*2,W+a*2);
padding(:) = 255;
out = padding;
padding(1+a:H+a,1+b:W+b) = input;

for i = 1 + a : H + a
    for j = 1 + b : W + b
        temp = padding(i-a:i+a,j-b:j+b) - mask;
        out(i,j) = min(temp(:));
        if out(i,j) < 0
            out(i,j) = 0;
        end
    end
end

out = uint8(out(1+a:H+a,1+b:W+b));

end