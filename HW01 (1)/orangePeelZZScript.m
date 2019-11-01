clear 

[sa1] = orangePeel(105);
% 	sa1 =>                     107.63
% 		Output variable(s) should be identical to that produced by the solution file
% 
[sa2] = orangePeel(260);
% 	sa2 =>    197
% 		Output variable(s) should be identical to that produced by the solution file
% 
[sa3] = orangePeel(500);
% 	sa3 =>                     304.65
% 		Output variable(s) should be identical to that produced by the solution file

[sa1_soln] = orangePeel_soln(105);
[sa2_soln] = orangePeel_soln(260);
[sa3_soln] = orangePeel_soln(500);

check_sa1 = isequal(sa1, sa1_soln);
check_sa2 = isequal(sa2, sa2_soln);
check_sa3 = isequal(sa3, sa3_soln);  