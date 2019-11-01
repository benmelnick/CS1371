function [matches] = swipeLeft(info, profiles)

%Scores on the profiles you have matched with are in an array, 
%where each row represents a different candidate and each column is a category. 
%Find the average score for each candidate and concatenate the averages to 
%the right of the array. Sort the array by the averages with the highest average 
%on top, and extract the number of profiles given in the second input.
% For example, if the second input is 3, the output array should be the top 3 
%     profiles with the highest average on top.

[row, col] = size(info);
totals = sum(info, 2); %computing sums of each row - sum for each candidate
averages = totals / col; %averages of each candidate
averages = round(averages); %round averages
[newAvg, indices] = sort(averages); %sort from lowest to highest
%indices is column vector of indices of elements in new sorted order

newInfo = [info averages];
sorted = newInfo(indices, :);

matches = sorted(end: -1 : end - profiles + 1, :); %indexing top scores

end