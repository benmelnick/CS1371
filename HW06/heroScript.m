% Test Cases:
[out1] = beMyHero(movieOptions1, friendList1, nflxList1, stats1);
[out1_soln] = beMyHero_soln(movieOptions1, friendList1, nflxList1, stats1);

% 	out1 => Based on condition 1, X-Men would be a great choice!
% 
[out2] = beMyHero(movieOptions2, friendList2, nflxList2, stats2);
[out2_soln] = beMyHero_soln(movieOptions2, friendList2, nflxList2, stats2);

% 	out1 => Based on condition 4, Guardians of the Galaxy would be a great choice!
% 
[out3] = beMyHero(movieOptions3, friendList3, nflxList3, stats3);
[out3_soln] = beMyHero_soln(movieOptions3, friendList3, nflxList3, stats3);

% 	out1 => Based on condition 3, Thor: Ragnarok would be a great choice!
% 
[out4] = beMyHero(movieOptions4, friendList4, nflxList4, stats4);
[out4_soln] = beMyHero_soln(movieOptions4, friendList4, nflxList4, stats4);

% 	out1 => Based on condition 2, Ant-Man would be a great choice!

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);
match4 = isequal(out4, out4_soln);