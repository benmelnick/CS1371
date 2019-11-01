% Test Cases:
[Out1] = fruitThief([true false true false false true], [true false true false false true], [true false true true false false], [true false true false false true])
[Out1_soln] = fruitThief_soln([true false true false false true], [true false true false false true], [true false true true false false], [true false true false false true])

% 	Out1 => Suspect #3 is the fruit thief.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[Out2] = fruitThief([false false false true false true true], [false false true false false true true], [false false false true false true true], [false false false true false true true])
[Out2_soln] = fruitThief_soln([false false false true false true true], [false false true false false true true], [false false false true false true true], [false false false true false true true])

% 	Out2 => Suspect #2 is the fruit thief.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[Out3] = fruitThief([false true false true true false], [false true false true true false], [false true false true true false], [true true true true false true])
[Out3_soln] = fruitThief_soln([false true false true true false], [false true false true true false], [false true false true true false], [true true true true false true])

% 	Out3 => Suspect #4 is the fruit thief.
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(Out1, Out1_soln);
match2 = isequal(Out2, Out2_soln);
match3 = isequal(Out3, Out3_soln);