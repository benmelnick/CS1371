%% Function Name: cartDist
%
% Test Cases:
[out1] = cartDist(4, 5, 7, 9);
[out1_soln] = cartDist_soln(4, 5, 7, 9);
match1 = isequal(out1, out1_soln);
%
[out2] = cartDist(4, 3, -7, -10);
[out2_soln] = cartDist_soln(4, 3, -7, -10);
match2 = isequal(out2, out2_soln);
%
[out3] = cartDist(0, 0, 0, 0);
[out3_soln] = cartDist_soln(0, 0, 0, 0)	;
match3 = isequal(out3, out3_soln);