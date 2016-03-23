%
% author : SeanChense
%
clc,clf,clear all,close all;
matr = [13 22 38;
        41 52 16;
        77 83 96];
    
% Custom Min Filter
min  = filterOrder(matr, 0)
% Standard Min Filter by Matlab
minS = ordfilt2(matr, 1, ones(3,3))

% Custom Max Filter
max  = filterOrder(matr, 1)
% Standard Max Filter by Matlab
maxS = ordfilt2(matr, 9, ones(3,3))

% Custom Median Filter
median  = filterOrder(matr, 2)
% Standard Median Filter by Matlab
medianS = ordfilt2(matr, 5, ones(3,3))
