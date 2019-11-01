% Test Cases:
[out1] = runeScape(charStruct1, itemStruct1);
[out1_soln] = runeScape_soln(charStruct1, itemStruct1);

% 	out1 => bob needs 29185661 more experience points to use the rune platebody.
% 
[out2] = runeScape(charStruct2, itemStruct2);
[out2_soln] = runeScape_soln(charStruct2, itemStruct2);

% 	out2 => ~epicKiller420~ needs 0 more experience points to use the yew longbow.
% 
[out3] = runeScape(charStruct3, itemStruct3);
[out3_soln] = runeScape_soln(charStruct3, itemStruct3);

% 	out3 => bestPKerEver99 needs 87862910 more experience points to use the void mace.
% 
[out4] = runeScape(charStruct4, itemStruct4);
[out4_soln] = runeScape_soln(charStruct4, itemStruct4);

% 	out4 => zezima needs 60593697735 more experience points to use the cabbage.

match1 = isequal(out1,out1_soln);
match2 = isequal(out2,out2_soln);
match3 = isequal(out3,out3_soln);
match4 = isequal(out4,out4_soln);