l=((x3-x2).*(x3-x2)+(y3-y2).*(y3-y2)).^0.5;

figure;plot(t2,l,'r^');grid on;

for hh=1:27
   ll(hh)=l(hh);
   v(hh)=(l(hh+1)-l(hh))./(t(hh+1)-t(hh));
   tt(hh)=t2(hh);
   %plot(t(hh),l,'r-');
   %hold on
    
end
figure;plot(tt,v,'r*-');grid on;
figure;plot(tt,ll,'-');