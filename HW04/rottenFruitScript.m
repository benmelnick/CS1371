%Test Cases:
[fruits1] = rottenFruit([1 4 9 7 6 4])
[fruits1_soln] = rottenFruit_soln([1 4 9 7 6 4]);

% 	fruits1 =>      4
% 		Output variable(s) should be identical to that produced by the solution file
% 
[fruits2] = rottenFruit([10 5 6 8 3 1 2 8 5 7 3 15])
[fruits2_soln] = rottenFruit_soln([10 5 6 8 3 1 2 8 5 7 3 15]);

% 	fruits2 =>      7
% 		Output variable(s) should be identical to that produced by the solution file
% 
[fruits3] = rottenFruit([2.2 9 7.7 5 4.8 14 19 .5 3 3])
[fruits3_soln] = rottenFruit_soln([2.2 9 7.7 5 4.8 14 19 .5 3 3]);

% 	fruits3 =>      5
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(fruits1, fruits1_soln);
match2 = isequal(fruits2, fruits2_soln);
match3 = isequal(fruits3, fruits3_soln);