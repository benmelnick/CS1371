% Test Cases:
[pos1, layer1] = onions(arr1);
[pos1_soln, layer1_soln] = onions_soln(arr1);

% 	pos1 =>      1     3
% 	layer1 =>      4
% 
[pos2, layer2] = onions(arr2);
[pos2_soln, layer2_soln] = onions_soln(arr2);

% 	pos2 =>      3     1
% 	layer2 =>      6
% 
[pos3, layer3] = onions(arr3);
[pos3_soln, layer3_soln] = onions_soln(arr3);

% 	pos3 =>      2     2
% 	layer3 =>      5

match1a = isequal(pos1,pos1_soln);
match1b = isequal(layer1,layer1_soln);

match2a = isequal(pos2,pos2_soln);
match2b = isequal(layer2,layer2_soln);

match3a = isequal(pos3,pos3_soln);
match3b = isequal(layer3,layer3_soln);


