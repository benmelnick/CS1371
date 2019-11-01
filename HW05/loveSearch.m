function [final] = loveSearch(word, input)

% Write a function in MATLAB that solves a word search puzzle. 
% The function will take in two inputs: the word to search for and a character 
%     array representing the word search. 
% You will find the occurrence of the word in the puzzle and cross it out 
%     by replacing the letters with  '#' . You will then return this updated array.

%use strrep to replace word
%word can read up down left or right --> use linearization to rearrange
%array

[row,col] = size(input);

str = '#########################################';
replace = str(1:length(word)); %creates string of hashtags

rows1 = reshape(input.', 1, []); %puts all letters in one long vector - use to find word going right horizontally
rows2 = rows1(end : -1 : 1); %reverses rows1
cols1 = transpose(input(:)); %use to find words that could be moving down vertically
cols2 = cols1(end : -1 : 1); %reverses cols1

%cross word out - reorient array
newR1 = strrep(rows1, word, replace);
contains1 = ismember(newR1, replace); %logical vector to see if it contains symbol
multiplier1 = any(contains1); %returns 1 if it contains symbol, zero if not
adjustedR1 = multiplier1 * transpose(reshape(newR1, row, col)); %will make array of 0 if no '#'
%adjusted arrays will become ASCII values

newR2 = strrep(rows2, word, replace);
contains2 = ismember(newR2, replace); %logical vector to see if it contains symbol
multiplier2 = any(contains2); %returns 1 if it contains symbol, zero if not
adjustedR2 = multiplier2 * transpose(reshape(newR2(end:-1:1), row, col));

newC1 = strrep(cols1, word, replace);
contains3 = ismember(newC1, replace); %logical vector to see if it contains symbol
multiplier3 = any(contains3); %returns 1 if it contains symbol, zero if not
adjustedC1 = multiplier3 * reshape(newC1, row, col);

newC2 = strrep(cols2, word, replace);
contains4 = ismember(newC2, replace); %logical vector to see if it contains symbol
multiplier4 = any(contains4); %returns 1 if it contains symbol, zero if not
adjustedC2 = multiplier4 * reshape(newC2(end:-1:1), row, col);

combined = [adjustedR1; adjustedR2; adjustedC1; adjustedC2];
zeros = combined == 0; %logical array where there is a zero
combined(zeros) = []; %empty space

final = char(reshape(combined, row, col));

end