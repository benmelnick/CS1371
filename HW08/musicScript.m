% Test Cases:
% musicAwards('general.txt', category1, winner1);
% musicAwards_soln('general.txt', category1, winner1);
% 
% % 		Output text file(s) should be identical to that produced by the solution file
% % 
% musicAwards('Rock.txt', category2, winner2);
% musicAwards_soln('Rock.txt', category2, winner2);
% 
% % 		Output text file(s) should be identical to that produced by the solution file
% % 
% musicAwards('Pop.txt', category3, winner3);
% musicAwards_soln('Pop.txt', category3, winner3);

% 		Output text file(s) should be identical to that produced by the solution file

visdiff('Pop_updated.txt','Pop_updated_soln.txt');

