% Test Cases:
[solved1] = puzzleBox(jumbled1, rowShift1, colShift1);
[solved1_soln] = puzzleBox_soln(jumbled1, rowShift1, colShift1);

% 	solved1 => Value too large to display. Value should match that of the solution function.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[solved2] = puzzleBox(jumbled2, rowShift2, colShift2);
[solved2_soln] = puzzleBox_soln(jumbled2, rowShift2, colShift2);

% 	solved2 => Value too large to display. Value should match that of the solution function.
% 		Output variable(s) should be identical to that produced by the solution file
% 
[solved3] = puzzleBox(jumbled3, rowShift3, colShift3);
[solved3_soln] = puzzleBox_soln(jumbled3, rowShift3, colShift3);

% 	solved3 => Value too large to display. Value should match that of the solution function.
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(solved1, solved1_soln);
match2 = isequal(solved2, solved2_soln);
match3 = isequal(solved3, solved3_soln);