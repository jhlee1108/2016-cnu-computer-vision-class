function out = mydilation(input, mask)
[H W] = size(input);
[m_h m_w] = size(mask);
a = floor(m_h/2);
b = floor(m_w/2);
out = zeros(H+a*2,W+a*2);
out(1+a:H+a,1+b:W+b) = input;

for i = 1 + a : H + a
    for j = 1 + b : W + b
        if input(i-a,j-b) == 1
            out(i-a:i+a,j-b:j+b) = out(i-a:i+a,j-b:j+b) | mask;
        end
    end
end

out = out(1+a:H+a,1+b:W+b);

end