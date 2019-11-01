function [final] = treeFarm(rows,char)

% Write a recursive function that takes in the length of the base of the tree as well as 
%     any single character with which to grow the tree (a leaf) and outputs an array of 
%     class  char  that contains the pyramid. 
% The dimensions of your final array should be  <length(base)> by <(2*length(base))-1> . 
% Each row should have 1 more leaf than the row above it and a single space (ASCII value 32) 
%     should separate each leaf character within a row. 
% Any other index within the array that does not contain a pyramid character should be filled with 
%     a space (ASCII value 32).

charInt = double(char);
tree = []; %construct array of entirely ones to be modified
cols = rows*2 - 1;
for i = 1 : rows
%     %calculate where character should be printed, print a space elsewhere
%     mid = floor(cols/2) + 1; %midpoint of pyramid
%     indices = mid - (i - 1) : 2 : mid + (i - 1); %calculate vector of indices to place character
%     line = [];
%     for j = 1 : cols
%         if ismember(j,indices) %if reached an index
%             line = [line char];
%         else 
%             line = [line ' '];
%         end  
%     end
%     tree = [tree;line];
    line = buildRow(i,char);
    %add the padding
    padding = cols - length(line); %calculate how much padding to add
    for j = 1 : padding / 2
        line = [' ' line ' ']; %add padding on both sides
    end
    tree = [tree;line];
end
final = tree;
end

function [line] = buildRow(int,char) %build lines without padding

if int == 1 %base case
    line = char;
else
    line = [char ' ' buildRow(int-1,char)]; %when not at base case, create a line starting with character, then a space, then everything before that line
end
end



