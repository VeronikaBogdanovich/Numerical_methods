clear;
clc;
n=5;
d=1;
A=zeros(n,n);
for i=1:n
    for j=1:n
        if i==j
            A(i,j)=1+(1/j);
        end
        if i~=j
            A(i,j)=(n-j)*(n-j);
        end
    end
end
C=A;
B=A;
A
B=inv(B)
f=A*B;
det(A)
[A,n,d]=GaussV(A,n,d);
d
A
x=f;
[C,n,f,x]=InvV(C,n,f,x);
x
