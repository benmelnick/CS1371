[tree1] = treeFarm(5, '!');
[tree1_soln] = treeFarm_soln(5, '!');

% 	tree1 =>  
%     !    
%    ! !   
%   ! ! !  
%  ! ! ! ! 
% ! ! ! ! !

[tree2_soln] = treeFarm_soln(10, '%');
[tree2] = treeFarm(10, '%');


[tree3_soln] = treeFarm_soln(35, 'w');
[tree3] = treeFarm(35, 'w');

match1 = isequal(tree1,tree1_soln);
match2 = isequal(tree2,tree2_soln);
match3 = isequal(tree3,tree3_soln);




