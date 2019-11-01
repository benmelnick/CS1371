% Test Cases:
[word1] = coldWar('utymcg', -16, 20)
[word1_soln] = coldWar_soln('utymcg', -16, 20);

% 	word1 => enigma
% 		Output variable(s) should be identical to that produced by the solution file
% 
[word2] = coldWar('qvzk', 12, 45)
[word2_soln] = coldWar_soln('qvzk', 12, 45);

% 	word2 => cold
% 		Output variable(s) should be identical to that produced by the solution file
% 
[word3] = coldWar('msqhxsh', 10, -14)
[word3_soln] = coldWar_soln('msqhxsh', 10, -14);

% 	word3 => weather
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(word1, word1_soln);
match2 = isequal(word2, word2_soln);
match3 = isequal(word3, word3_soln);