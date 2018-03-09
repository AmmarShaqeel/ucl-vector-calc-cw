clear;
clc;

filename = 'q5_org.xlsx';

presh = xlsread(filename,'a2:a15');
w1 =xlsread(filename,'b2:b15');
w2 =xlsread(filename,'c2:C15');
l1 = xlsread(filename,'d2:d15');
l2 = xlsread(filename,'e2:e15');

data = horzcat(presh,w1,w2,l1,l2);
[U,S,V] = svd(data);

C = S;
C(2+1:end,:)=0;
C(:,2+1:end)=0;

rdata = [U*C*V'];