clc;
clear;
eps=10^(-9);
f_1 = @(x,y) sin(x)-y-1.32;
f_2 = @(x,y) cos(y)-x+0.85;
t = -10:0.05:10;
[X,Y]=ndgrid(t,t);
F1=f_1(X,Y);
F2=f_2(X,Y);
contour(X,Y,F1,[0 0])
hold on
contour(X,Y,F2, [0 0])
hold on
J = @(x,y) [cos(x), -1; -1, -sin(y)];
F = @(x,y) [f_1(x,y); f_2(x,y)];
x=[2;-0.5];
err(1)=1;
k=1;
while err(k)>eps
    k=k+1;
    x=x-inv(J(x(1),x(2)))*F(x(1),x(2));
    err(k)=norm(F(x(1),x(2)));
end
plot(x(1),x(2),'.','MarkerSize',25)
f_1(x(1),x(2))
f_2(x(1),x(2))
figure
semilogy(err) 