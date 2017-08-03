x=pi/4;
w=11:0.01:16;
%k=0.9:0.01:1.1;
k=4;
z=(k-1)*cos(x)*cos(x)*9.8./((k-1)*w.*w*sin(x)*sin(x));
plot(w,z,'-')