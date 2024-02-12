imgLion = imread("image\lion-cub.jpg");
imgcurve_brighter = imread("image\curve_brighter.jpg");
imgTexture = imread("image\texture.jpg");
imgWoodRoom = imread("image\wood-room.jpg");
imgImage = imread("image\images.jpg");
imgBubble = imread("image\bubble.jpg");
imgBackground = imread("image\background.jpg");

ffta_curve =  fft2(imgcurve_brighter);
ffta_lion = fft2(imgLion);

fftb_lion = (abs(ffta_curve)).*exp(1i *angle(ffta_lion));

img_inv_lion = ifft2(fftb_lion);
img_inv_lion = uint8(img_inv_lion);

ffta_woodRoom = fft2(imgWoodRoom);
ffta_Image = fft2(imgImage);

ffta_sum = ffta_Image + ffta_woodRoom;

fftb_woodRoom = (abs(ffta_Image)).*exp(1i *angle(ffta_woodRoom));
fftb_Image = (abs(fftb_woodRoom)).*exp(1i *angle(ffta_sum));

img_inv_Image = ifft2(fftb_Image);
img_inv_Image = uint8(img_inv_Image);


ffta_bubble = fft2(imgBubble);
ffta_Background = fft2(imgBackground);

ffta_sum_bubble_background = ffta_bubble + ffta_Background;

img_ffta_sum = ifft2(ffta_sum_bubble_background);
img_ffta_sum = uint8(img_ffta_sum);

subplot(1,3,1), imshow(img_inv_lion);
subplot(1,3,2), imshow(img_inv_Image);
subplot(1,3,3), imshow(img_ffta_sum);
