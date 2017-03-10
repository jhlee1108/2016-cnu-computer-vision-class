function out = gaussian_filter(filter, input, sigma)
a=floor(size(filter,1)/2);
b=floor(size(filter,2)/2);
x = -a:a;
y = -b:b;
    
m_x = exp(-x.^2/(2*sigma^2))/(sqrt(2*pi)*sigma);
m_x = (m_x/sum(m_x(:)))';
out = filter2(m_x,input);

m_y = exp(-y.^2/(2*sigma^2))/(sqrt(2*pi)*sigma);
m_y = m_y/sum(m_y(:));
out = filter2(m_y,out);
