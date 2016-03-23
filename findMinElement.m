%
% author : SeanChense
%
function [ result ] = findMinElement(source)
[a, b] = size(source);
result = source(1,1);
for i = 1:a
    for j = 1:b
        if(source(i, j) < result)
            result = source(i, j);
        end
    end
end

end