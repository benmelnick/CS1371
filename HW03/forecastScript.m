% Test Cases:
[out1] = forecast('I dislike cold weather.', 'dislike', 'enjoy')
[out1_soln] = forecast_soln('I dislike cold weather.', 'dislike', 'enjoy');

% 	out1 => I enjoy cold weather.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = forecast('CS1371 homework is the worst!', 'worst', 'best')
[out2_soln] = forecast_soln('CS1371 homework is the worst!', 'worst', 'best');

% 	out2 => CS1371 homework is the best!
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = forecast('u(sic)ga won the National Championship.', 'won', 'lost')
[out3_soln] = forecast_soln('u(sic)ga won the National Championship.', 'won', 'lost');

% 	out3 => u(sic)ga lost the National Championship.
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);