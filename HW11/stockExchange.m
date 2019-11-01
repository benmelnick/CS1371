function [updated] = stockExchange(info)

% You are given an array containing two rows, the first corresponding to a 
%     day of the month and the second corresponding to the price of a particular 
%     stock on that day. 
% On a day when the record keeper was absent, there will be an NaN in the index of 
%     the stock price for that day. 
% Your function should replace each NaN with the correct stock price, which you 
%     will determine by spline interpolation.

prices = info(2,:);
days = info(1,:);
days2 = days; %place holder for array of days

%start by removing NaN stock prices
empty = isnan(prices);
prices(empty) = []; 
days(empty) = []; %need to also remove the empty days in order to use spline method

newPrices = spline(days,prices,days2); %use known days and prices values to create new plot from original day values
final = round(newPrices,2);
updated = [days2; final];

end