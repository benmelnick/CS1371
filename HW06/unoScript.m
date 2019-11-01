% Test Cases:
[str1] = incredibleUno('Frozone', 'g', [8], 'rbyyb', [4 0 5 7 3]);
% 	str1 => Where's my super suit?!
% 
[str2] = incredibleUno('Dash', 'r', [11], 'rygrryby', [11 5 11 4 0 4 11 11]);
% 	str2 => Dash played 4 #11 cards.
% 
[str3] = incredibleUno('Syndrome', 'b', [0], 'rrrgygygrryg', [1 1 1 1 1 1 1 1 1 3 2 1]);
% 	str3 => Syndrome had to draw a card...

[str1_soln] = incredibleUno_soln('Frozone', 'g', [8], 'rbyyb', [4 0 5 7 3]);
[str2_soln] = incredibleUno_soln('Dash', 'r', [11], 'rygrryby', [11 5 11 4 0 4 11 11]);
[str3_soln] = incredibleUno_soln('Syndrome', 'b', [0], 'rrrgygygrryg', [1 1 1 1 1 1 1 1 1 3 2 1]);

match1 = isequal(str1, str1_soln);
match2 = isequal(str2, str2_soln);
match3 = isequal(str3, str3_soln);
