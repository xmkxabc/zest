clc; clear all; close all;
A=[1 2 2 2;1/2 1 2 3;1/2 1/2 1 2;1/2 1/3 1/2 1];
k = 1;
[V, D] = eig(A);
% ���ص�V������������Ӧ����������
% D�ǶԽ�����Ϊ����ֵ�ľ���
D = diag(D);
[D, I] = sort(D, 'descend');
% �õ��˶�Ӧ������
if k > length(D)
    k = length(D);
end
temp(1) = {D(1 : k)};
temp(2) = {V(:, I(1 : k))};
fprintf('/n ǰk���������ֵ : /n');
celldisp(temp(1));
fprintf('/n ǰk���������ֵ��Ӧ���������� : /n');
celldisp(temp(2));