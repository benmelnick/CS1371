% Test Cases:
[search1] = loveSearch(word1, puzzle1);
[search1_soln] = loveSearch_soln(word1, puzzle1);

% 	search1 =>  
% aoelcg
% qlwicu
% pdksiw
% se####
% eiflow
% pixleh
% 		Output variable(s) should be identical to that produced by the solution file
% 
[search2] = loveSearch(word2, puzzle2);
[search2_soln] = loveSearch_soln(word2, puzzle2);

% 	search2 =>  
% qpien
% romec
% owkxi
% r####
% sleit
% 		Output variable(s) should be identical to that produced by the solution file
% 
[search3] = loveSearch(word3, puzzle3);
[search3_soln] = loveSearch_soln(word3, puzzle3);

% 	search3 =>  
% keopalwir
% wpeogk#if
% xpydza#iu
% qpworu#hd
% mxnvja#xu
% wodkri#ha
% epslxocir
% doflgkhmb
% woeifjthd
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(search1, search1_soln);
match2 = isequal(search2, search2_soln);
match3 = isequal(search3, search3_soln);