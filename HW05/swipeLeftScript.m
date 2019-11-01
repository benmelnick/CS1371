% Test Cases:
[out1] = swipeLeft(arr1, 3);
[out1_soln] = swipeLeft(arr1, 3);

% 	out1 =>  
%     79    53    56    56    77   100    70
%     40    68    54    67    88    89    68
%     98    88    57    56    32    46    63
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = swipeLeft(arr2, 5);
[out2_soln] = swipeLeft_soln(arr2, 5);

% 	out2 =>  
%     99    89    68    95    77    86
%     88    67    67    55    87    73
%     58    98    43    67    88    71
%     65    55    48    98    77    69
%     14    67    87    67    55    58
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = swipeLeft(arr3, 3);
[out3_soln] = swipeLeft_soln(arr3, 3);

% 	out3 =>  
%     78    87    98    97    90
%     78    97    55    90    80
%     56    76    67    98    74
% 		Output variable(s) should be identical to that produced by the solution file
match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);
