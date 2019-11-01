% Test Cases:
[woven1] = sweaterWeather('Tebs iet erasrpdsetri l h ie', 'h ettm owa  tie wae saltetm!')
[woven1_soln] = sweaterWeather_soln('Tebs iet erasrpdsetri l h ie', 'h ettm owa  tie wae saltetm!');
% 	woven1 => The best time to wear a striped sweater is all the time!
% 		Output variable(s) should be identical to that produced by the solution file
% 
[woven2] = sweaterWeather('tcycrsmssetr', 'ak hita waes')
[woven2_soln] = sweaterWeather_soln('tcycrsmssetr', 'ak hita waes');

% 	woven2 => tacky christmas sweaters
% 		Output variable(s) should be identical to that produced by the solution file
% 
[woven3] = sweaterWeather('cl ete  wae ete', 'odwahr=setrwahr')
[woven3_soln] = sweaterWeather_soln('cl ete  wae ete', 'odwahr=setrwahr');

% 	woven3 => cold weather = sweater weather
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(woven1, woven1_soln);
match2 = isequal(woven2, woven2_soln);
match3 = isequal(woven3, woven3_soln);