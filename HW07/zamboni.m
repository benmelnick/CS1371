function zamboni(image)

% Write a function called  zamboni() that takes in an input image and outputs     
%     the same image modified with a  box blur . In a box blur operation, each 
%     center pixel becomes the average of all 9 pixels around it (including itself), 
%     for every color layer. Refer to the example operation below for a 3x3  uint8  array.
% 
%                 30 30 30       ** ** **
%                 90 90 90  -->  ** 60 **
%                 60 60 60       ** ** **

% To determine the color values of the pixels in the output image, follow these steps:
% 1) Index out a 3x3 piece of the original array, where the middle pixel of the 
%     3x3 piece corresponds to the new pixel.
% 2) Average the values in the 3x3 array, then set the new pixel to the average 
%     value (Do this for each layer of the image separately).
% 3) Repeat steps 2) and 3) for all 3x3 pieces of the image array.
% There are not enough pixels in the original image to calculate the border values. 
% Hence, the output image will have 2 fewer rows (top and bottom rows) and 2 
%     fewer columns (far left and right columns) than the original. 
% Write the resultant image with  'blur_'  appended to the beginning of the 
%     input image filename.

img = imread(image);
imgNum = double(img);

[r,c] = size(imgNum); %c will print out number of cols in imgNum * 3

newImg = zeros(r,c/3,3); %this array will be used to blur the image, otherwise the loop will take averages of values that have just been averaged

for i = 1 : r - 2
    for j = 1 : (c / 3) - 2
        arr = imgNum(i:i+2,j:j+2,:); %indexing out a 3X3 array
%         avg = mean(mean(arr));

        red = arr(:,:,1);
        green = arr(:,:,2);
        blue = arr(:,:,3);
        
        redAvg = mean(mean(red));
        greenAvg = mean(mean(green));
        blueAvg = mean(mean(blue));

        %putting avg rgb values in new image array
        newImg(i+1,j+1,1) = redAvg;
        newImg(i+1,j+1,2) = greenAvg;
        newImg(i+1,j+1,3) = blueAvg;
    end
end

new = ['blur_' image];

finalImg = newImg(2:end-1,2:end-1,:); %getting rid of zeros
finalImg = uint8(finalImg);

imwrite(finalImg, new);

end