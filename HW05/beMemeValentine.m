function beMemeValentine(main, background)

%Write a function that replaces the background color of the main image 
%     with the corresponding pixels in the background image. 
% Resize the background image to the size of the main image. 
% To find the background color of the main image, find the RGB values of the top left pixel. 
% The name of the output image should be the original name of the main image before 
%     the file extensions with  '_Meme.png'  appended.

imgMain = imread(main);
[rowM, colM, dimM] = size(imgMain);
r = imgMain(:,:,1); 
g = imgMain(:,:,2); 
b = imgMain(:,:,3); 

r1 = r(1,1);
g1 = g(1,1);
b1 = b(1,1);

imgBack = imread(background);
newBack = imresize(imgBack, [rowM colM]); %resize background pic

containsBack = r == r1 & g == g1 & b == b1; %logical vector everywhere main image contains background color
mask = cat(3, containsBack, containsBack, containsBack); %create an image mask of the logical vector

imgMain(mask) = newBack(mask);
[w,r] = strtok(main,'.');
meme = '_Meme.png';
newName = [w meme];
imwrite(imgMain, newName);

end