x=pi/8:0.008:pi/2;
ff=0.004;
%x=pi/4;
w=15;
%w=11:0.01:16;
%k=0.9:0.01:1.1;
k=4;
z=(k-1)*cos(x).*cos(x)*9.8./((k-1)*w.*w*sin(x).*sin(x));
l=z.*tan(x);
plot(x,l,'-');
hold on
for i=1:30
    xx(i)=x(4*i);
    yy(i)=l(4*i)+(ff/2-ff*randn);
    i=i+1;
end
plot(xx,yy,'r*-');
