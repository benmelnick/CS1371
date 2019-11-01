function [newCa] = myCabbages(ca)

% Write a function that edits a cell array of your cabbages cart statistics 
%     to find how many cabbages and how much money you lost. 
% The cell array will have three columns - 
%     the first lists different types of cabbages you sell
%     the second has how many cabbages of that type you have, 
%     and the third has their corresponding price per cabbage. 
% Sort the array by the price per cabbage with the cheapest type of cabbage at the top.
% Then, calculate the total number of cabbages you had and the total amount of money 
%     your cabbages were worth, and concatenate these values to the bottom of the 
%     array in that order, with the words  'Total loss'  in the first column

[r,c] = size(ca);

prices = ca(:,3);
prices = cell2mat(prices);
[sorted,indx] = sort(prices);

ca = ca(indx,:);

totalCabbages = 0;
totalWorth = 0;
for i = 1: r
    cabbages = ca{i,2};
    price = ca{i,3};
    
    totalCabbages = totalCabbages + cabbages;
    totalWorth = totalWorth + (cabbages * price);
end

finalWorth = round(totalWorth,2);
ca(r+1,1) = {'Total loss'};
ca(r+1,2) = {totalCabbages};
ca(r+1,3) = {finalWorth};

newCa = ca;

end