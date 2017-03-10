function out = filter2_revision(filter, input, opt)

a = floor(size(filter,1)/2);
b = floor(size(filter,2)/2);
height = size(input,1);
width = size(input,2);

if(strcmp(opt,'zero'))
    z = zeros(height+a*2,width+b*2);
    z(1+a:height+a,1+b:width+b)=input;
end

if(strcmp(opt,'mirror'))
    x=input;
    z=[x(a:-1:1,:); x; x(end:-1:end-(a-1),:)];
    z=[z(:,b:-1:1),z,z(:,end:-1:end-(b-1))];
end

for i=a+1:height+a,
    for j=b+1:width+b,
        c = z(i-a:i+a,j-b:j+b);
        z(i,j)=sum(c(:))/(size(filter,1)*size(filter,2));
    end
end

out = z(a+1:height+a,b+1:width+b);

    