clc;
clear;
eps=10^(-11);
f=@(x) x.^4-8*x.^2+9*x-3;
tau=-1/9;
fi=@(x) x+tau*f(x);
X=-0.5:0.1:3.5;
plot(X,X,X,fi(X))
x(1)=-0.5;
k=1;
Error(k)=1;
while Error(k)>eps
    x(k+1)=fi(x(k));
    Error(k+1)=abs(f(x(k+1)));
    k=k+1;
end
sprintf('ответ x=%0.4f',x(k-1))
semilogy(1:k, Error)