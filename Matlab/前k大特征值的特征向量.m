clc; clear all; close all;
A=[1 2 2 2;1/2 1 2 3;1/2 1/2 1 2;1/2 1/3 1/2 1];
k = 1;
[V, D] = eig(A);
% 返回的V是以列向量对应的特征向量
% D是对角线上为特征值的矩阵
D = diag(D);
[D, I] = sort(D, 'descend');
% 得到了对应的排序
if k > length(D)
    k = length(D);
end
temp(1) = {D(1 : k)};
temp(2) = {V(:, I(1 : k))};
fprintf('/n 前k个最大特征值 : /n');
celldisp(temp(1));
fprintf('/n 前k个最大特征值对应的特征向量 : /n');
celldisp(temp(2));