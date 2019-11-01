% Test Cases:
[updatedClans1, result1] = warriors(clans1, 'Agility');
[updatedClans1_soln, result1_soln] = warriors_soln(clans1, 'Agility');

% 	updatedClans1 => Structure array should be identical to that produced by solution file
% 	result1 => Following the warrior code, fearless leader Bluestar led ThunderClan to victory against ShadowClan.
% 
[updatedClans2, result2] = warriors(clans2, 'Courage');
[updatedClans2_soln, result2_soln] = warriors_soln(clans2, 'Courage');

% 	updatedClans2 => Structure array should be identical to that produced by solution file
% 	result2 => Following the warrior code, fearless leader Skystar led SkyClan to victory against ShadowClan.
% 
[updatedClans3, result3] = warriors(clans3, 'Coolness');
[updatedClans3_soln, result3_soln] = warriors_soln(clans3, 'Coolness');

% 	updatedClans3 => Structure array should be identical to that produced by solution file
% 	result3 => Following the warrior code, fearless leader The Spirit of The Warrior Code led StarClan to victory against RiverClan.

match1a = isequal(updatedClans1,updatedClans1_soln);
match1b = isequal(result1,result1_soln);

match2a = isequal(updatedClans2,updatedClans2_soln);
match2b = isequal(result2,result2_soln);

match3a = isequal(updatedClans3,updatedClans3_soln);
match3b = isequal(result3,result3_soln);