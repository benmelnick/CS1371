% Test Cases:
albumArt('Divide.txt');
albumArt_soln('Divide.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
albumArt('Chance_3.txt');
albumArt_soln('Chance_3.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
albumArt('Graduation.txt');
albumArt_soln('Graduation.txt');

% 		Output text file(s) should be identical to that produced by the s

visdiff('Graduation_review.txt','Graduation_review_soln.txt');