%
% author : SeanChense
%
function [ result ] = findMedianElement(source)
[a, b] = size(source);
array = zeros(9, 1);
index = 1;
for i = 1:a
    for j = 1:b
        array(index, 1) = source(i, j);
        index = index + 1;
    end
end
result = bubbleSort(array);
result = result(5, 1);
end