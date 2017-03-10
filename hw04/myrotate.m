function out = myrotate(input, angle, opt)

[H W] = size(input);
H1 = round(sqrt(H^2 + W^2));
W1 = round(sqrt(H^2 + W^2));
radian = pi/180*angle;
out = zeros(H1, W1);

for i=1:H1
    for j=1:W1
        x = (j-W1/2)*cos(radian) - (i-H1/2)*sin(radian) + W/2;
        y = (j-W1/2)*sin(radian) + (i-H1/2)*cos(radian) + H/2;
        
        if y <= H && x<=W
            if strcmp(opt, 'nearest')
                x_input = round(x);
                y_input = round(y);
                if y_input>=1 && x_input>=1 && y_input<=256 && x_input<=256 
                    out(i,j) = input(y_input, x_input);
                end
            elseif strcmp(opt, 'bilinear')
                    x1 = floor(x);
                    x2 = ceil(x);
                    y1 = floor(y);
                    y2 = ceil(y);
                    h = y-y1;
                    w = x-x1;
                if y1>=1  && x1>=1 && y2<=256 && x2<=256
                    out(i,j) = (1-h)*(1-w)*input(y1,x1) + h*(1-w)*input(y2,x1) + (1-h)*w*input(y1,x2) + h*w*input(y2,x2);
                end
            elseif strcmp(opt, 'bicubic')
                
            end
        end
    end
end
