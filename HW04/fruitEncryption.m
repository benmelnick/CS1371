function [new] = fruitEncryption(original)

% 1. Shift the characters in the even rows by the number of columns in the array.
% 2. Shift the characters in the odd columns by the number of rows in the array, but
% backwards (towards  'a' ).
% 3. Swap the top half of the array with the bottom half.

origASCII = double(original) - 97;
[row, col] = size(origASCII); %gives rows and columns
origASCII(2:2:end,:) = mod(origASCII(2:2:end,:) + col, 26); %indexing even rows
origASCII(:, 1 : 2 : end) = mod(origASCII(:, 1 : 2 : end) - row, 26); %indexing odd columns

% %Index top half
%     topHalf = arr(1:end/2,:);
%      
%     %Index bottom half
%     botHalf = arr(end/2+1:end,:);

topHalf = origASCII(1:floor(end/2),:) + 97;
botHalf = origASCII(floor(end/2) + 1 : end, :) + 97;

final = [botHalf; topHalf];
new = char(final);

end