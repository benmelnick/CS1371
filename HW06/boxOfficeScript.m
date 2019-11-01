% Test Cases:
[earnings1] = boxOfficePower('Gal Gadot,Chris Hemsworth,Brandon Routh');
[earnings1_soln] = boxOfficePower_soln('Gal Gadot,Chris Hemsworth,Brandon Routh');

% 	earnings1 =>         2300
% 
[earnings2] = boxOfficePower('Robert Downey Jr.,Ryan Reynolds,Scarlett Johansson');
[earnings2_soln] = boxOfficePower_soln('Robert Downey Jr.,Ryan Reynolds,Scarlett Johansson');

% 	earnings2 =>         1100
% 
[earnings3] = boxOfficePower('Brandon Routh,Chadwick Boseman,Chris Hemsworth');
[earnings3_soln] = boxOfficePower_soln('Brandon Routh,Chadwick Boseman,Chris Hemsworth');

% 	earnings3 =>    800

match1 = isequal(earnings1, earnings1_soln);
match2 = isequal(earnings2, earnings2_soln);
match3 = isequal(earnings3, earnings3_soln);
