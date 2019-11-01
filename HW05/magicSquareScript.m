[out1] = magicSquarePair(magic(3), magic(4));
[out1_soln] = magicSquarePair_soln(magic(3), magic(4));

% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = magicSquarePair([1 2; 3 4], zeros(2, 2));
[out2_soln] = magicSquarePair_soln([1 2; 3 4], zeros(2, 2));

% 	out1 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = magicSquarePair(magic(5), randi(5));
[out3_soln] = magicSquarePair_soln(magic(5), randi(5));

% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
%

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);