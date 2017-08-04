function Rossler
clear;clc
a=[0.005,0.001];
b=[0.01,0.005];
c=[5.7,10];
x0=[0 0.5 0.05 0];
for jj=1:2
    [t,x]=ode45(@myRossler,[0,200],x0,[],a(jj),b(jj),c(jj));
    figure;polar((x(:,4)-a(jj)*t),x(:,3));grid on;
    figure;plot(x(:,3),atand(((x(:,3).*x(:,1))-a(jj))./x(:,2)));grid on;
    hold on;
    plot(
end
function dx=myRossler(t,x,a,b,c)
dx=[
    2*a*x(2)/x(3)-b*x(1);
    a*a*x(3)-2*a*x(1)-b*x(2);
    x(2);
    x(1)
    ];
