function [word] = coldWar(vec, odd, even)

%1) calculate new ASCII values of every letter - adjusted to a scale of 1
%to 26 (subtract by 96)
%2) mod by 26 - max adjusted ASCII value of lowercase alphabet
%3) add mod value to 96 to bring back up to regular scale
%4) create final vector

%1)
values = double(vec) - 96;
evenValues = values(2 : 2 : end);
oddValues = values(1 : 2 : end);

netEven = even + evenValues;
netOdd = odd + oddValues;

%2)
adjustedEven = mod(netEven, 26);
adjustedOdd = mod(netOdd, 26);

%3)
finalEven = 96 + adjustedEven;
finalOdd = 96 + adjustedOdd;

wordVal = [finalEven finalOdd];

wordVal(1 : 2 : end) = finalOdd(1 : end);
wordVal(2 : 2 : end) = finalEven(1 : end);

word = char(wordVal);

end