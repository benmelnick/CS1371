function heroMask(image)

% %mask1
% (60,100] red
% (60,100] green 
% (60,100] blue
% mask2
% [0,60]
% [0,60]
% [0,60]
% mask3
% [0,60]
% (60,100]
% [0,60]
% mask4
% (100,255]
% (100,255]
% (100,255]
% mask5
% (60,100]
% [0,60]
% [0,60]

img = imread(image);
r = img(:,:,1); %vector of red values
g = img(:,:,2); 
b = img(:,:,3); 

%calculate the averages of each of the colors to determine the mask
red = mean(mean(r));
green = mean(mean(g));
blue = mean(mean(b));

if (red > 60 & red <= 100) & (green > 60 & green <= 100) & (blue > 60 & blue <= 100)
    mask = 'mask1.png';
elseif (red >= 0 & red <= 60) & (green >= 0 & green <= 60) & (blue >= 0 & blue <= 60)
    mask = 'mask2.png';
elseif (red >= 0 & red <= 60) & (green > 60 & green <= 100) & (blue >= 0 & blue <= 60)
    mask = 'mask3.png';
elseif (red > 100 & red <= 255) & (green > 100 & green <= 255) & (blue > 100 & blue <= 255)
    mask = 'mask4.png';
elseif (red > 60 & red <= 100) & (green >= 0 & green <= 60) & (blue >= 0 & blue <= 60)
    mask = 'mask5.png';
end

maskImg = imread(mask); %load background image with mask
rMask = maskImg(:,:,1);
gMask = maskImg(:,:,2);
bMask = maskImg(:,:,3);

%now have to replace green background with background from original image
r1 = 0;
g1 = 255;
b1 = 0;

containsBack = rMask == r1 & gMask == g1 & bMask == b1; %logical vector of where the background color is
replace = cat(3, containsBack, containsBack, containsBack); %create an image mask of the logical vector --> pixels that need to be replaced

maskImg(replace) = img(replace); %replace mask image that has green background with original image
[w,r] = strtok(image, '.');
extension = '_wMask.png';
new = [w extension];
imwrite(maskImg, new);

end