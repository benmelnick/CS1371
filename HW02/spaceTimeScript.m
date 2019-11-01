%% Function Name: spaceTime
%
% Test Cases:
[years1] = spaceTime(1, 228e9, 6.39e23);
[years1_soln] = spaceTime_soln(1, 228e9, 6.39e23);
match1 = isequal(years1, years1_soln);

[years2] = spaceTime(1, 108e9, 4.87e24);
[years2_soln] = spaceTime_soln(1, 108e9, 4.87e24);
match2 = isequal(years2, years2_soln);

[years3] = spaceTime(7, 57.9e9, 3.3e23);
[years3_soln] = spaceTime_soln(7, 57.9e9, 3.3e23);
match3 = isequal(years3, years3_soln);
	
[years4] = spaceTime(5000, 7.573e13, 1e21);
[years4_soln] = spaceTime_soln(5000, 7.573e13, 1e21);
match4 = isequal(years4, years4_soln);