% Test Cases:
% fourEverAlone('brian.png');
% fourEverAlone_soln('brian.png');
match1 = checkImage('brian_Alone.png','brian_Alone_soln.png');
% 		Output image(s) should be identical to that produced by solution file
% 
% fourEverAlone('pepe.png');
% fourEverAlone_soln('pepe.png');
match2 = checkImage('pepe_Alone.png','pepe_Alone_soln.png');

% 		Output image(s) should be identical to that produced by solution file
% 
% fourEverAlone('kim.png');
% fourEverAlone_soln('kim.png');
match3 = checkImage('kim_Alone.png','kim_Alone_soln.png');

% 		Output image(s) should be identical to that produced by solution file