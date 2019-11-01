function [investmentReached] = fruitLottery(yourTicket, winningTicket, investment)

% Compare the first five integers in both numbers. 
% For every integer in your lottery ticket number that matches  any  of the first five integers in the winning lottery ticket number,add $100,000 to your total prize.
% 2. If the last number matches, then double the prize amount determined by the first 5
% numbers.
% 3. Compare your earnings to the required initial investment, and output a true if your
% earnings are greater than or equal to the investment, and a false otherwise.
% Example:
% Bought lottery ticket Winning lottery ticket Maximum prize amount
% ? ' 13-45-33-19-29-8' ? ' 29-10-6-13-41-8' ? 400000
% Notes:
% The first five numbers of the winning ticket can match the first five numbers of the bought ticket in  any  order.
% Each ticket will contain 6  unique  integers (no repeated integers within a single ticket number).
% There will be no extraneous characters in the inputs.
% The output needs to be a logical to receive full credit.
% You can use str2num() on a space separated character vector of numbers to get a
% vector of doubles.

%1) finding and removing dashes
dashes1 = yourTicket == '-'; %returns true where there is a dash
dashes2 = winningTicket == '-';

yourTicket(dashes1) = [' ']; %places empty space at dash
winningTicket(dashes2) = [' '];

%2) converting char vector to double vector
yourVec = str2num(yourTicket); %length -1 to get rid of last number
adjustedVec = yourVec(1:length(yourVec) - 1);

winningVec = str2num(winningTicket);
adjustedWinning = winningVec(1:length(winningVec) - 1);

%3) comparing numbers
common = ismember(adjustedVec, adjustedWinning); %logical array, returns true for common number
A = adjustedVec(common(1:end)); %A is a vector with the two common numbers

%4) calculating winnings
winnings = length(A) * 100000;
extra = winnings * isequal(yourVec(length(yourVec)), winningVec(length(winningVec)));
final = winnings + extra;

%5) output
investmentReached = final > investment;

end