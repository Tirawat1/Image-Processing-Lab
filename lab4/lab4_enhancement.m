img1 = imread("chest_gray.jpg");

img2 = imadjust(img1,[0.1 0.6],[0.1 1]);
img3 = adapthisteq(img1);
subplot(1,3,1) , imshow(img1);
subplot(1,3,2) , imshow(img2);
subplot(1,3,3) , imshow(img3);