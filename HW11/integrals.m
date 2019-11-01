function [area] = integrals(arr1,arr2)

% Given two sets of (x,y) values ordered by their x values, compute the positive area 
%     between the two curves. 
% One set of points is guaranteed to lie entirely above the other, but it may be either 
%     the first or second input. 
% In other words, the y-values of one input will be greater than the corresponding 
%     y-values in the other input. 
% Use the trapezoidal approximation of the integral to find the area under each, and 
%     take the positive difference.
% We need a visualization for the math we just did! First, plot the greater of the two 
%     inputs with a green line, and plot the lesser of the two with a red line. 
% Next, 'fill in' the area between the two curves you just plotted with a vertical line of 
%     magenta stars at every integer along the x-axis ( 'm*' ) using the following steps:
%         1. For every integer in between the minimum x value to the maximum x value, 
%               linearly interpolate the corresponding y values on the lower and upper curves.
%         2. At each x value, plot the stars from the interpolated y value on the lower 
%               line to the interpolated y value on the upper line so that each star will 
%               lie at an integer point.

upperCurve = [];
lowerCurve = [];

if arr1(2,:) > arr2(2,:) %y values of first curve greater than y values of second
    upperCurve = arr1;
    lowerCurve = arr2;
elseif arr1(2,:) < arr2(2,:)
    upperCurve = arr2;
    lowerCurve = arr1;
end

areaUpper = trapz(upperCurve(1,:),upperCurve(2,:)); %calculate area under each curve
areaLower = trapz(lowerCurve(1,:),lowerCurve(2,:));

area = round(areaUpper - areaLower,2);

%plot upperCurve with green line, lowerCurve with red line
plot(upperCurve(1,:),upperCurve(2,:),'g');
hold on %allows both curves to be plotted on same graph
plot(lowerCurve(1,:),lowerCurve(2,:),'r');

%plotting vertical lines
xVals = upperCurve(1,:); %x values the same for both curves
maxX = max(xVals);
minX = min(xVals);
xlim([minX maxX]); %changing bounds of x axis

vals = minX : maxX; %vector of x values
upperNewY = interp1(upperCurve(1,:),upperCurve(2,:),vals); %interpolate new y values along upper curve
lowerNewY = interp1(lowerCurve(1,:),lowerCurve(2,:),vals); %interpolate along lower curve

for i = 1 : length(vals) %iterate through all the x values
    %create vector of y values for each value of x - starts at y value of
    %lower curve and y value of upper curve
    yVals = lowerNewY(i) : upperNewY(i); 
    plot(vals(i),yVals,'m*');
end    

axis tight    

end