function [out] = palingrove(ca)

% A  palindrome  is  a word, phrase, or sequence that reads the same backward as forward 
%     (e.g., "racecar"). 
% To add symmetry to your orchard, you decide that every row in the grove should be a palindrome.
% Write a function that takes in a cell array outlining the plan for your new orchard and 
%     removes any rows in the array that are not palindromes.

%terminating condition is that a palindrome row has been found - the output
%will be the row itself; if the row is not a palindrome then move onto the
%next row

out = [];
[r,c] = size(ca); %start with very last row and move up
for i = 1 : r
    line = ca(i,:);
    val = isPalindrome(line); %returns either 1 or 0; 1 indicates that there is a palindrone
    if val == 1
        out = [out; line];
    end
end    
end

function [out] = isPalindrome(ca) %n starts out at 1

    if length(ca) < 1 %base case 1
        out = 1;
    elseif ~isequal(ca(1),ca(end)) %base case 2 - end is not the same as the beginning - this condition will always be checked, so even if out = 1 it will revert back to 0
        out = 0;
    else
    % recursive call
    out = isPalindrome(ca(2:length(ca)-1));
    end
  
end