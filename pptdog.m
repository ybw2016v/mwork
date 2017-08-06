l=((x-x1).*(x-x1)+(y-y1).*(y-y1)).^0.5;

%figure;plot(t,l,'-',);grid on;

for hh=1:300
   ll(hh)=l(hh);
   v(hh)=(l(hh+1)-l(hh))./t(hh);
   tt(hh)=t(hh);
   %plot(t(hh),l,'r-');
   %hold on
    
end
figure;plot(tt,v,'-');grid on;
figure;plot(tt,ll,'-');