function out = up_sampling(input,k,opt)

[y x] = size(input);
y_new = y*k;
x_new = x*k;
y_scale = y_new/(y-1);
x_scale = x_new/(x-1);
M = zeros(y_new,x_new);

if(strcmp(opt,'nearest'))
    
    for i = 0:y_new-1
        for j = 0:x_new-1
            M(i+1,j+1) = input(1+round(i/y_scale),1+round(j/x_scale));
        end
    end
end

if(strcmp(opt,'bilinear'))

    for i = 0:y_new-1
        for j = 0:x_new-1
            W = j/x_scale-floor(j/x_scale);
            H = i/y_scale-floor(i/y_scale);
            p11 = input(1+floor(i/y_scale),1+floor(j/x_scale));
            p12 = input(1+floor(i/y_scale),1+ceil(j/x_scale));
            p21 = input(1+ceil(i/y_scale),1+floor(j/x_scale));
            p22 = input(1+ceil(i/y_scale),1+ceil(j/x_scale));
            M(i+1,j+1) = ((p11 * (1-W) + p12 * W) * (1-H)) + ((p21 * (1-W) + p22 * W) * H);
        end
    end
end

if(strcmp(opt,'bicubic'))
    
end

out = M;