x=0:0.01:1.5;
d=0.03;
c=0.1;
b=0.1;
l=0;
y = d/c - ((l+d)*exp(-x*(b/2 - (b*b - 4*c)^(1/2)/2)))/(2*c) - ((l+d)*exp(-x*(b/2 + (b*b - 4*c)^(1/2)/2)))/(2*c);
plot(x,y*0.8,'-');
hold on
for pp=1:30
    if pp<10
        dog=0.005;
    elseif pp>=10 & pp<20
        dog=0.002;
    elseif pp>=20
        dog=0.005;
    end
        
   t(pp)=x(5*pp);
   hl(pp)=y(5*pp)+(dog*2*pp*0.01+dog*randn*pp*0.03)*2;
   pp=pp+1;
    
    
end
plot(t,hl*0.8,'r*');