%plot(xx,yy,'r*');
%hold on;
function Rossler

%clear;clc
a=[1,0.05];
xx=[0;135;272;329;400;518;636;717;784.800000000000];
yy=[0;14.1700000000000;16.7500000000000;14.3000000000000;16.9400000000000;15.3300000000000;13.9500000000000;14.2000000000000;14.4600000000000];
b=[4,0.40];
c=[5.7,3];
x0=[0 40 15 0];
for jj=1:2
    [t,x]=ode45(@myRossler,[0,350],x0,[],a(jj),b(jj),c(jj));
    figure;polar((x(:,4)-a(jj)*t),x(:,3));grid on;
    figure;plot(x(:,3),atand(((x(:,3).*x(:,1))-a(jj))./x(:,2)));grid on;
    hold on;
    plot(xx,yy,'r*');
end

function dx=myRossler(t,x,a,b,c)
dx=[
    2*a*x(2)/x(3)-b*x(1);
    a*a*x(3)-2*a*x(1)-b*x(2);
    x(2);
    x(1)
    ];
