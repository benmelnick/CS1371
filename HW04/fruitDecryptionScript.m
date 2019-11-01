% Test Cases:
[out1] = fruitDecryption('9iltm#W*ELO1VEF$H&RY!,<^@UJ')
[out1_soln] = fruitDecryption_soln('9iltm#W*ELO1VEF$H&RY!,<^@UJ');

% 	out1 => welovefruit
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = fruitDecryption('saFl<a&dy Juibm>&myR6yumN>m>^-m>yU51MI1CTE')
[out2_soln] = fruitDecryption_soln('saFl<a&dy Juibm>&myR6yumN>m>^-m>yU51MI1CTE');

% 	out1 => fruitsaladyummyyummy
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = fruitDecryption('f>woIr/>l#you$Y,MGR(Q6A59*PEF3NUHL')
[out3_soln] = fruitDecryption_soln('f>woIr/>l#you$Y,MGR(Q6A59*PEF3NUHL');

% 	out1 => imgrapefulforyou
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);