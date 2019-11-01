% Test Cases:
[out1] = roots([1 2 3 4 5], [-3 -2 -1 0 1], 1, 5);
[out1_soln] = roots_soln([1 2 3 4 5], [-3 -2 -1 0 1], 1, 5);

% 	out1 =>      4
% 
[out2] = roots([1 10 100], [1 18 34], -5, 5);
[out2_soln] = roots_soln([1 10 100], [1 18 34], -5, 5);

% 	out1 =>                       0.51
% 
[out3] = roots([30 40 50 60], [-16 5 10 15], 20, 40);
[out3_soln] = roots_soln([30 40 50 60], [-16 5 10 15], 20, 40);

% 	out1 =>                      36.33
%

match1 = isequal(out1,out1_soln);
match2 = isequal(out2,out2_soln);
match3 = isequal(out3,out3_soln);