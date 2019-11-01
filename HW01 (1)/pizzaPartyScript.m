clear

[slices1, left1] = pizzaParty(15, 3);
% 	slices1 =>      1
% 	left1 =>      9
% 		Output variable(s) should be identical to that produced by the solution file
% 
[slices2, left2] = pizzaParty(100, 25);
% 	slices2 =>      2
% 	left2 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
[slices3, left3] = pizzaParty(1, 1);
% 	slices3 =>      8
% 	left3 =>      0
% 		Output variable(s) should be identical to that produced by the solution file

[slices1_soln, left1_soln] = pizzaParty_soln(15, 3);
[slices2_soln, left2_soln] = pizzaParty_soln(100, 25);
[slices3_soln, left3_soln] = pizzaParty_soln(1, 1);

check_slices1 = isequal(slices1, slices1_soln);
check_left1 = isequal(left1, left1_soln);

check_slices2 = isequal(slices2, slices2_soln);
check_left2 = isequal(left2, left2_soln);

check_slices3 = isequal(slices3, slices3_soln);
check_left3 = isequal(left3, left3_soln);

