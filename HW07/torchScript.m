% Test Cases:
[result1] = olympicTorch(map1, path1);
[result1_soln] = olympicTorch_soln(map1, path1);

% 	result1 =>      1
% 
[result2] = olympicTorch(map2, path2);
[result2_soln] = olympicTorch_soln(map2, path2);

% 	result2 =>      1
% 
[result3] = olympicTorch(map3, path3);
[result3_soln] = olympicTorch_soln(map3, path3);

% 	result3 =>      0

match1 = isequal(result1, result1_soln);
match2 = isequal(result2, result2_soln);
match3 = isequal(result3, result3_soln);