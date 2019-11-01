function holidayCard(image)

img = imread(image);
out = img;
neg = 255 - img;
out = [out;neg];
[r,c,~] = size(img);
newR = 2 * r;
right = imresize(img,[newR,c]);
r = right(:,:,1);
g = right(:,:,2);
b = right(:,:,3);
mask = r == 255 & g == 255 & b == 255;
r(mask) = 255;
g(mask) = 0;
b(mask) = 0;
final = cat(3,r,g,b);
out = [out, final];
imwrite(out,'holidayCard.png');

end