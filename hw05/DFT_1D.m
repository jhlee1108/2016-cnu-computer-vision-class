function out = DFT_1D(in)

N = size(in,2);
out = zeros(1,N);

for u=0:N-1
    sum = 0;
    for x=0:N-1
        sum = sum + exp(-2*pi*1i*x*u/N)*in(1,x+1);
    end    
    out(1,u+1) = sum;
end
