% Test Cases:
[newGrove1] = palingrove(grove1);
[newGrove1_soln] = palingrove_soln(grove1);

% 	newGrove1 =>  
%     'Maple'     'Apple'      'Apple'      'Maple' 
%     'Orange'    'Sequoia'    'Sequoia'    'Orange'
% 
[newGrove2] = palingrove(grove2);
[newGrove2_soln] = palingrove_soln(grove2);

% 	newGrove2 =>  
%     'Cherry'
%     'Pine'  
%     'Maple' 
% 
[newGrove3] = palingrove(grove3);
[newGrove3_soln] = palingrove_soln(grove3);

% 	newGrove3 =>  
%     'Redwood'      'Pine'    'Palm'      'Pine'    'Redwood'  
%     'Maple'        'Palm'    'Cherry'    'Palm'    'Maple'    
%     'Pineapple'    'Fig'     'Fig'       'Fig'     'Pineapple'

match1 = isequal(newGrove1,newGrove1_soln);
match2 = isequal(newGrove2,newGrove2_soln);
match3 = isequal(newGrove3,newGrove3_soln);