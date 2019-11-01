%% Function Name: clockHands
%
% Test Cases:
[out1, out2] = clockHands(6, 45, 10);
[out1_soln, out2_soln] = clockHands_soln(6, 45, 10);
match1a = isequal(out1, out1_soln);
match1b = isequal(out2, out2_soln);
match1 = match1a & match1b;

[out3, out4] = clockHands(4, 45, -30);
[out3_soln, out4_soln] = clockHands_soln(4, 45, -30);	
match2a = isequal(out3, out3_soln);
match2b = isequal(out4, out4_soln);
match2 = match2a & match2b;

[out5, out6] = clockHands(1, 10, -134);
[out5_soln, out6_soln] = clockHands_soln(1, 10, -134);
match3a = isequal(out5, out5_soln);
match3b = isequal(out6, out6_soln);
match3 = match3a & match3b;