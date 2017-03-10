function out = median_filter(input,n)
H = size(input,1);
W = size(input,2);
out = input;
n = floor(n/2);
z = zeros(H+2*n,W+2*n);
z(1+n:H+n,1+n:W+n)=input;

for i=1:H
    for j=1:W
        out(i,j) = select(z(i:i+2*n,j:j+2*n));
    end
end

end

function out = select(input)
    h = size(input,1);
    w = size(input,2);
    y = zeros(1,h*w);
    
    for i=1:h
        y(1,1+(i-1)*w:i*w) = input(i,:);
    end
    
    for i=1:h*w-1
        min = i;
        for j=i+1:h*w
            if(y(1,j)<y(1,min))
                min = j;
            end
        end
        temp = y(1,i);
        y(1,i) = y(1,min);
        y(1,min) = temp;
    end
   out = y(1,round(h*w/2));
end