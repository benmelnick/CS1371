% Test Cases:
formation([1 3 3 5 7], 'formation1.txt');
formation_soln([1 3 3 5 7], 'formation1.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
formation([7 7 5 5], 'formation2.txt');
formation_soln([7 7 5 5], 'formation2.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
formation([1 9 21 13 9], 'formation3.txt');
formation_soln([1 9 21 13 9], 'formation3.txt');
% 
% % 		Output text file(s) should be identical to that produced by the solution file

visdiff('formation3.txt','formation3_soln.txt');