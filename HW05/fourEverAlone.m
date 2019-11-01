function fourEverAlone(image)

% Write a function that takes in the name of an image and edits it in the four 
%     ways described below, and concatenates it into one image.
% 1. Top right: the mirror image of the original image
% 2. Top left: the negative of the original image
% 3. Bottom left: the grayscale of the original image
% 4. Bottom right: the original image with the green and blue layers swapped
% The final image should have twice the number of rows and twice the number of
%     columns compared to the original image. 
% The name of the output image should be the original name before the file 
%     extensions with  '_Alone.png'  appended.

img = imread(image);
imgNum = double(img);
r = imgNum(:,:,1); 
g = imgNum(:,:,2); 
b = imgNum(:,:,3); 

%negative
neg = 255 - img;

%grey scale
avg = (r + g + b) / 3;
avg = uint8(avg);
grey = cat(3,avg,avg,avg);

%mirror image
rFlip = r(:,end:-1:1);
gFlip = g(:,end:-1:1);
bFlip = b(:,end:-1:1);
mirrorImg = uint8(cat(3, rFlip, gFlip, bFlip));

%swap blue and green
swap = img(:,:,[1, 3, 2]);

final = [neg mirrorImg; grey swap];
[w,r_] = strtok(image,'.');
newName = [w '_Alone.png'];
imwrite(final, newName);

end