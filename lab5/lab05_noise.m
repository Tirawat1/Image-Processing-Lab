img = imread("girl_gray.jpg");

enImg = imadjust(img,[0.5 1],[0 1]);
filter = fspecial('average',[3 3]);
fimg = imfilter(enImg,filter);
fimg_1 = medfilt2(fimg);

enImg2 = adapthisteq(fimg_1);

enImg3 = histeq(fimg_1);

figure;
subplot(1,4,1) , imshow(img)
subplot(1,4,2) , imshow(fimg_1)
subplot(1,4,4) , imshow(enImg2)
subplot(1,4,3) , imshow(enImg3)
title('Girl Image');


img_space = imread("space2.jpg");
filter2 = fspecial('gaussian',[3 3],1);

enImg_space_1 = imadjust(img_space,[0.1 0.4],[0 1]);
f_spaceImg = imfilter(enImg_space_1,filter2);

f_spaceImg_a = adapthisteq(f_spaceImg);


figure;
subplot(1,3,1) , imshow(img_space)
subplot(1,3,2) , imshow(f_spaceImg)
subplot(1,3,3) , imshow(f_spaceImg_a)
title('Space Image')

