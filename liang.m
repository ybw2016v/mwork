rgb = imread('IMG_20170729_094634.jpg');
hsv = rgb2hsv(rgb);
H = hsv(:,:,1); % 色调
S = hsv(:,:,2); % 饱和度
V = hsv(:,:,3); % 亮度
