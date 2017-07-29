function lum = myfunction()

imgTemp = imread('IMG_20170729_101920.jpg');

[m,n]=size(imgTemp);
m = double(m);
n = double(n);
divide = double(m*n);

Xrgb = 0.2990*imgTemp(:,:,1) + 0.5870*imgTemp(:,:,2) + 0.1140*imgTemp(:,:,3);%提取亮度信息
Xrgb = double(Xrgb);
i = double(0);
lum = double(0);
lum=mean(Xrgb(:))
%while (i < (divide+1))
    %lum = lum + Xrgb(i+1);
    %i = i + 1;
%end
lum = lum / divide;