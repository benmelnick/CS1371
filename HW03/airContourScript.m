% Test Cases:
[change1] = airContour([1,2,3], [3,2,3])
[change1_soln] = airContour_soln([1,2,3], [3,2,3]);

% 	change1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
% 
[change2] = airContour([12,17,10,8], [2,12,11,3])
[change2_soln] = airContour_soln([12,17,10,8], [2,12,11,3]);

% 	change2 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
[change3] = airContour([8,13,14,10,20,8], [36,37,42,40,42,43])
[change3_soln] = airContour_soln([8,13,14,10,20,8], [36,37,42,40,42,43]);

% 	change3 =>      1
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(change1, change1_soln);
match2 = isequal(change2, change2_soln);
match3 = isequal(change3, change3_soln);
