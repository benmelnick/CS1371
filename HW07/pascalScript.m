% Test Cases:
[podium1] = pascalsPodium(4);
[podium1_soln] = pascalsPodium_soln(4);

% 	podium1 =>  
%      0     0     0     1     0     0     0
%      0     0     1     0     1     0     0
%      0     1     0     2     0     1     0
%      1     0     3     0     3     0     1
% 
[podium2] = pascalsPodium(30);
[podium2_soln] = pascalsPodium_soln(30);

% 	podium2 => Value too large to display. Value should match that of the solution function.
% 
[podium3] = pascalsPodium(150);
[podium3_soln] = pascalsPodium_soln(150);

% 	podium3 => Value too large to display. Value should match that of the solution function.

match1 = isequal(podium1, podium1_soln);
match2 = isequal(podium2, podium2_soln);
match3 = isequal(podium3, podium3_soln);