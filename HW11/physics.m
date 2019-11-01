function physics(time, vel, degree)

% Write a function that first plots the velocity values vs. time and then 
%     estimates and plots the acceleration in two different ways. 
% Your function should do the following:
%     1. Create a 2x2 subplot.
%     2. Plot the velocity vs time graph in black in the top left position.
%     3. Approximate the acceleration data by finding the numerical derivative of 
%         the velocity. Plot the numerical acceleration vs time graph in 
%             red in the top right position.
%     4. Now find the best-fit polynomial of the velocity data using the order 
%         given by the third input. 
%         Then, find a second approximation for the acceleration data by taking 
%         the analytical derivative of this polynomial and evaluating the 
%         derivative at the original time values. Plot your derivative in 
%         green in the bottom right position.

subplot(2,2,1); %creates 2 x 2 subplot, then begins to plot in top left position
plot(time, vel, 'k');
axis square

subplot(2,2,2); %plotting numerical acceleration in top right
numAccel = diff(vel) ./ diff(time);
plot(time(1:end-1),numAccel,'r'); %end - 1 to match dimensions of vectors
axis square

subplot(2,2,4); %plotting bottom right position 
bestFit = polyfit(time,vel,degree); %returns coefficients of best fit polynomial (function of time)
%take analytical derivative of polynomial
pows = length(bestFit) - 1:-1:0;
derivBestFit = bestFit .* pows; %returns coefficients of derivative
derivBestFit(end) = [];

accel = polyval(derivBestFit,time);
plot(time,accel,'g');

axis square

end