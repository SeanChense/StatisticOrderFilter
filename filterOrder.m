%
% author : SeanChense
% args   : 0 minFilter;1 maxFilter; 2 medianFilter
%
function [ result ] = filterOrder(source, args)
[ma,na]  = size(source);

zfilt = zeros(ma+2, na+2); 
Ip = zfilt;                     
r1 = 2;          % valid first data row
r2 = ma+1;       % valid last  data row          
c1 = 2;          % valid first data colunm
c2 = na+1;       % valid last  data colunm
Ip(r1:r2,c1:c2) = double(source);   % put the source data into the zeros

result = zeros(ma, na);
for r = 1:ma
    for c = 1:na
        temp = Ip(r:r+2,c:c+2);
        if (args == 0)
            result(r,c) = findMinElement(temp);
        elseif (args == 1)
            result(r,c) = findMaxElement(temp);
        elseif (args == 2)
            result(r,c) = findMedianElement(temp);
        end
    end
end

end


