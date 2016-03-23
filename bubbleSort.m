
%
%   author : SeanChense
%

function [ result ] = bubbleSort(source)
[length,] = size(source);

for i = 1:length
    for j = 1:(length - 1)
        if (source(j,1) > source(j+1, 1))
            temp = source(j,1);
            source(j,1) = source(j+1,1);
            source(j+1,1) = temp;
        end
    end
end
result = source;
end