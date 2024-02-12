im = imread("coded_image_2.tif");
for i=[0,3,7]
    imshow(im);
    decoded = bitshift(im, i);
    imshow(decoded)
    pause(2);
end