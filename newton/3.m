clc;
clear;
eps=10^(-11);
f=@(x) x.^4-8*x.^2+9*x-3;
fp=@(x) 4*x.^3-16*x+9;
fi=@(x) x-f(x)/fp(x);
X=1:0.1:4;
plot([0 5],[0 0],'k-',X,f(X));
x(1)=-0.5;
k=1;
Error(k)=1;
while Error(k)>eps
    k=k+1;
    x(k)=fi(x(k-1));
    Error(k)=abs(f(x(k)));
end
sprintf('ответ x=%0.4f',x(k-1))
semilogy(1:k, Error)