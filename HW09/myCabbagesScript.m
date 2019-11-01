[arr1] = myCabbages(cabbages1);
[arr1_soln] = myCabbages_soln(cabbages1);

% 	arr1 =>  
%     'Savoy'         [ 3]    [ 1]
%     'Napa'          [ 2]    [ 2]
%     'Chinese'       [ 5]    [ 3]
%     'Total loss'    [10]    [22]
% 
[arr2] = myCabbages(cabbages2);
[arr2_soln] = myCabbages_soln(cabbages2);

% 	arr2 =>  
%     'Savoy'         [ 17]    [  0.99]
%     'Napa'          [ 29]    [  1.23]
%     'Tuscan'        [ 31]    [  1.58]
%     'Bok Choy'      [ 15]    [  1.89]
%     'Red'           [ 24]    [  3.11]
%     'Total loss'    [116]    [204.47]
% 
[arr3] = myCabbages(cabbages3);
[arr3_soln] = myCabbages_soln(cabbages3);

% 	arr3 =>  
%     'Tuscan'           [ 37]    [  0.98]
%     'Chinese'          [ 43]    [  1.22]
%     'Danish'           [ 48]    [   1.3]
%     'Gai Choy'         [ 40]    [  1.59]
%     'Baby Bok Choy'    [ 19]    [  1.64]
%     'Gonzales'         [ 24]    [  2.13]
%     'Red'              [ 31]    [  2.55]
%     'Green'            [ 29]    [  2.84]
%     'Total loss'       [271]    [458.41]

match1 = isequal(arr1,arr1_soln);
match2 = isequal(arr2,arr2_soln);
match3 = isequal(arr3,arr3_soln);