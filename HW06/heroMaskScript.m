% % Test Cases:
% heroMask('blackpanther.png');
% heroMask_soln('blackpanther.png');
match1 = checkImage('blackpanther_wMask.png', 'blackpanther_wMask_soln.png');
% % 		Output image(s) should be identical to that produced by solution file
% % 
% heroMask('greenlantern.png');
% heroMask_soln('greenlantern.png');
match2 = checkImage('greenlantern_wMask.png', 'greenlantern_wMask_soln.png');
% 
% % 		Output image(s) should be identical to that produced by solution file
% % 
% heroMask('captainamerica.png');
% heroMask_soln('captainamerica.png');
match3 = checkImage('captainamerica_wMask.png', 'captainamerica_wMask_soln.png');
% 
% % 		Output image(s) should be identical to that produced by solution file
% % 
% heroMask('spiderman.png');
% heroMask_soln('spiderman.png');
match4 = checkImage('spiderman_wMask.png', 'spiderman_wMask_soln.png');
% 
% % 		Output image(s) should be identical to that produced by solution file