% Test Cases:
[str1] = luge('Albert Demchenko-208.00-Felix Loch-207.53-Armin Zoeggeler-208.80');
[str1_soln] = luge_soln('Albert Demchenko-208.00-Felix Loch-207.53-Armin Zoeggeler-208.80');

% 	str1 => Felix Loch is the winner of the 2018 Olympics for luge, with a time of 207.53 seconds!
% 
[str2] = luge('Addison-453.255-Ashok-489.5-Amanda-276.45-Zach-602.432');
[str2_soln] = luge_soln('Addison-453.255-Ashok-489.5-Amanda-276.45-Zach-602.432');

% 	str2 => Amanda is the winner of the 2018 Olympics for luge, with a time of 276.45 seconds!
% 
[str3] = luge('Jens Muller-185.548-Michael Walter-186.933-Yury Kharchenko-186.274-Georg Hackl-185.916-Thomas Jacob-186.358');
[str3_soln] = luge_soln('Jens Muller-185.548-Michael Walter-186.933-Yury Kharchenko-186.274-Georg Hackl-185.916-Thomas Jacob-186.358');

% 	str3 => Jens Muller is the winner of the 2018 Olympics for luge, with a time of 185.55 seconds!

match1 = isequal(str1, str1_soln);
match2 = isequal(str2, str2_soln);
match3 = isequal(str3, str3_soln);