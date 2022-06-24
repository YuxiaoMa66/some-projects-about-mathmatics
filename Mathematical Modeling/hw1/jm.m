h = 1:10000;
t = 1:10000;
t = t/10000;
% 因变量
xlen = length(h);
ylen = length(t);
F = zeros(ylen,xlen);
for i = 1:xlen
for j = 1:ylen
F(j,i) = (0.00002398*tanh(acosh(exp(42.6*h(i)))))/t(j);
end
end
[xx,yy]=meshgrid(h,t);
figure;mesh(xx,yy,F)
xlabel('h');ylabel('dt');zlabel('F');

view([-34.500 9.303])