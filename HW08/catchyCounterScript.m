% Test Cases:
[num1] = catchyCounter('gucci.txt', 'Gucci Gang');
[num1_soln] = catchyCounter('gucci.txt', 'Gucci Gang');

% 	num1 =>     53
% 
[num2] = catchyCounter('wannabe.txt', 'wanna');
[num2_soln] = catchyCounter('wannabe.txt', 'wanna');

% 	num2 =>     28
% 
[num3] = catchyCounter('bohemian.txt', 'Bohemian Rhapsody');
[num3_soln] = catchyCounter_soln('bohemian.txt', 'Bohemian Rhapsody');

% 	num3 =>      0
%