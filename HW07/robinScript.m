% Test Cases:
[result1] = roundRobin(group1);
[result1_soln] = roundRobin_soln(group1);

% 	result1 => Team CAN won the round robin with a record of 3-0.
% 
[result2] = roundRobin(group2);
[result2_soln] = roundRobin_soln(group2);

% 	result2 => Team SLO won the round robin with a record of 3-1.
% 
[result3] = roundRobin(group3);
[result3_soln] = roundRobin_soln(group3);

% 	result3 => Team SWE won the round robin with a record of 4-1.

match1 = isequal(result1, result1_soln);
match2 = isequal(result2, result2_soln);
match3 = isequal(result3, result3_soln);
