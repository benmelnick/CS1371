% Test Cases:
[out1] = weatherStats([45, 46, 48, 52, 53, 50, 47, 42], 'SUNNY')
[out1_soln] = weatherStats_soln([45, 46, 48, 52, 53, 50, 47, 42], 'SUNNY');
% 	out1 => Today's weather was sunny, with a high temperature of 53 degrees and an average temperature of 48 degrees.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = weatherStats([20.5, 21.2, 24.6, 25.5, 29.3], 'COLD AND WINDY')
[out2_soln] = weatherStats_soln([20.5, 21.2, 24.6, 25.5, 29.3], 'COLD AND WINDY');
% 	out2 => Today's weather was cold and windy, with a high temperature of 29 degrees and an average temperature of 24 degrees.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = weatherStats([81, 84, 87, 86, 88, 90], 'HUMID')
[out3_soln] = weatherStats_soln([81, 84, 87, 86, 88, 90], 'HUMID');
% 	out3 => Today's weather was humid, with a high temperature of 90 degrees and an average temperature of 86 degrees.
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);