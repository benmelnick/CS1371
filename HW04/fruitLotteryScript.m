% Test Cases:
[out1] = fruitLottery('13-45-33-19-29-8', '29-10-6-13-41-8', 100)
[out1_soln] = fruitLottery_soln('13-45-33-19-29-8', '29-10-6-13-41-8', 100);

% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = fruitLottery('1-2-3-4-5-6', '7-8-9-10-11-12', 50)
[out2_soln] = fruitLottery_soln('1-2-3-4-5-6', '7-8-9-10-11-12', 50);

% 	out1 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = fruitLottery('46-100-9-12-6-10', '9-12-5-46-3-17', 100000)
[out3_soln] = fruitLottery_soln('46-100-9-12-6-10', '9-12-5-46-3-17', 100000);

% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);