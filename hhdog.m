x=0:0.01:0.5
y = d/c - ((l+d)*exp(-x*(b/2 - (b*b - 4*c)^(1/2)/2)))/(2*c) - ((l+d)*exp(-x*(b/2 + (b*b - 4*c)^(1/2)/2)))/(2*c);
plot(x*3,y,'-');
hold on
plot(x*3,time,'r*');