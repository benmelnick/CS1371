% Test Cases:
[winner1] = civilWar('Captain America', 'Iron Man');
[winner1_soln] = civilWar_soln('Captain America', 'Iron Man');

% 	winner1 => Player 1 wins!
% 
[winner2] = civilWar('Hawkeye', 'Black Panther');
[winner2_soln] = civilWar_soln('Hawkeye', 'Black Panther');

% 	winner2 => Player 2 wins!
% 
[winner3] = civilWar('Black Widow', 'Black Widow');
[winner3_soln] = civilWar_soln('Black Widow', 'Black Widow');

% 	winner3 => It's a tie!

match1 = isequal(winner1, winner1_soln);
match2 = isequal(winner2, winner2_soln);
match3 = isequal(winner3, winner3_soln);