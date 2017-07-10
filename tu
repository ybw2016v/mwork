clc
clear all
close all
I = imread('无标题.png');    %读取源图像
size(I) %显示图像采样值
figure(1);
imshow(I);
title('the original photo')
%---------------------------
I1 = I(:,:,1);
fftI = fft2(I1);
A1 = abs(fftI);         %取模值
B1 = (A1 - min(min(A1))) / (max(max(A1)) - min(min(A1))) * 255;  %归一化显示
B1(1,1)=0;
figure(2)
%imshow(B1);
title('the frequency spectrum without shiftfft()')
%---------------------------
sfftI = fftshift(fftI);
A = abs(sfftI);
B = (A - min(min(A))) / (max(max(A)) - min(min(A))) * 255;
C = log(A+1);
mesh(C);colormap jet;
%figure(3)
%imshow(B,[0,255]);  
%imshow(B);
title('the frequency spectrum with shiftfft()')
