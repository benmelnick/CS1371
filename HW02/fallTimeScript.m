%% Function Name: fallTime
%
% Test Cases:
[time1] = fallTime(5);
[time1_soln] = fallTime_soln(5);
match1 = isequal(time1, time1_soln);
% 
[time2] = fallTime(20);
[time2_soln] = fallTime_soln(20);
match2 = isequal(time2, time2_soln);
% 	
[time3] = fallTime(50);
[time3_soln] = fallTime_soln(50);	
match3 = isequal(time3, time3_soln);