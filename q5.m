clear;
clc;

filename = 'q5_data.xlsx';

presh = xlsread(filename,'a2:a15');
w1 =xlsread(filename,'b2:b15');
w2 =xlsread(filename,'c2:C15');
l1 = xlsread(filename,'d2:d15');
l2 = xlsread(filename,'e2:e15');

data = horzcat(presh,w1,w2,l1,l2);

s = svd(data,'econ');
[U,S,V] = svd(data,'econ');

importance = V*S;
rdata = U*S*V;