% Test Cases:
[area1] = integrals(int1, int2);
[area1_soln] = integrals_soln(int1, int2);

% 	area1 =>                      199.5
% 		Output plot(s) should be identical to that produced by solution file
% 
[area2] = integrals(int3, int4);
[area2_soln] = integrals_soln(int3, int4);

% 	area2 =>         2600
% 		Output plot(s) should be identical to that produced by solution file
% 
[area3] = integrals(int4, int3);
[area3_soln] = integrals_soln(int4, int3);

% 	area3 =>         2600
% 		Output plot(s) should be identical to that produced by solution file
% 
[area4] = integrals(int5, int6);
[area4_soln] = integrals_soln(int5, int6);

% 	area4 =>                     2221.5
% 		Output plot(s) should be identical to that produced by solution file

match1 = isequal(area1,area1_soln);
match2 = isequal(area2,area2_soln);
match3 = isequal(area3,area3_soln);
match4 = isequal(area4,area4_soln);