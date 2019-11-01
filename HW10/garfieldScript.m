% Test Cases:
[out1] = garfield(st1);
[out1_soln] = garfield_soln(st1);

% 	out1 => Structure array should be identical to that produced by solution file
% 
[out2] = garfield(st2);
[out2_soln] = garfield_soln(st2);

% 	out2 => Structure array should be identical to that produced by solution file
% 
[out3] = garfield(st3);
[out3_soln] = garfield_soln(st3);

% 	out3 => Structure array should be identical to that produced by solution file

match1 = isequal(out1,out1_soln);
match2 = isequal(out2,out2_soln);
match3 = isequal(out3,out3_soln);