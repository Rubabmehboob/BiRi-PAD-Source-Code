I=imread('fingerprint.jpg');
I=rgb2gray(I);
I=double(I);
H(:,1)= LCPD(im1);
hist(H);