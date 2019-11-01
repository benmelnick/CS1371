% % Test Cases:
mashUp('mitski.txt', 'paramore.txt', 'instr1.txt');
mashUp_soln('mitski.txt', 'paramore.txt', 'instr1.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
mashUp('hippocampus.txt', 'halsey.txt', 'instr2.txt');
mashUp_soln('hippocampus.txt', 'halsey.txt', 'instr2.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
mashUp('badbadhats.txt', 'lorde.txt', 'instr3.txt');
mashUp_soln('badbadhats.txt', 'lorde.txt', 'instr3.txt');

% 		Output text file(s) should be identical to that produced by the solution file
% 
mashUp('girlpool.txt', 'ladylamb.txt', 'instr4.txt');
mashUp_soln('girlpool.txt', 'ladylamb.txt', 'instr4.txt');
% 
% % 		Output text file(s) should be identical to that produced by the solution fil
visdiff('girlpool_ladylamb_mashUp.txt','girlpool_ladylamb_mashUp_soln.txt');