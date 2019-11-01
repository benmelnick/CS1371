%% Function Name: timeDilation
%
% % Test Cases:
[time1] = timeDilation(11, 1000000);
[time1_soln] = timeDilation_soln(11, 1000000);
match1 = isequal(time1, time1_soln);
 
[time2] = timeDilation(500, 2222222);
[time2_soln] = timeDilation_soln(500, 2222222);
match2 = isequal(time2, time2_soln);

[time3] = timeDilation(100, 5000000);
[time3_soln] = timeDilation_soln(100, 5000000);
match3 = isequal(time3, time3_soln);