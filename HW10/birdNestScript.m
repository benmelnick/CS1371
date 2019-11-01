% Test Cases:
[result1] = birdNest(rooms1);
[result1_soln] = birdNest_soln(rooms1);

% 	result1 => After an epic chase spanning 2 rooms, the cats found the bird in IC 114!
% 
[result2] = birdNest(rooms2);
[result2_soln] = birdNest_soln(rooms2);

% 	result2 => After an epic chase spanning 1 rooms, the cats found the bird in IC 203!
% 
[result3] = birdNest(rooms3);
[result3_soln] = birdNest_soln(rooms3);

% 	result3 => It was a stunning chase, but the bird escaped.
% 
[result4] = birdNest(rooms4);
[result4_soln] = birdNest(rooms4);

% 	result4 => After an epic chase spanning 90 rooms, the cats found the bird in IC 210!

match1 = isequal(result1,result1_soln);
match2 = isequal(result2,result2_soln);
match3 = isequal(result3,result3_soln);
match4 = isequal(result4,result4_soln);