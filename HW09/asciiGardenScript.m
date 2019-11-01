% Test Cases:
asciiGarden('gar1.xlsx')
asciiGarden_soln('gar1.xlsx')

% 		Output text file(s) should be identical to that produced by the solution file
% 
asciiGarden('gar2.xlsx')
asciiGarden_soln('gar2.xlsx')

% 		Output text file(s) should be identical to that produced by the solution file
% 
asciiGarden('gar3.xlsx')
asciiGarden_soln('gar3.xlsx')

% 		Output text file(s) should be identical to that produced by the solution file

visdiff('ascii_gar3.txt','ascii_gar3_soln.txt');