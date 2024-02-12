hawk = imread("hawk.jpg");
kitty = imread("kitty.jpg");

hawk = bitshift(hawk,-2);
hawk = bitshift(hawk,2);
kitty = bitshift(kitty,-6);

encoded = bitor(hawk,kitty);

hidden = bitshift(encoded, 6);

imshow([encoded, hidden]);