% Test Cases:
% zamboni('bruins.png');
% zamboni_soln('bruins.png');
% 		Output image(s) should be identical to that produced by solution file
% 
% zamboni('checkerboard.png');
% zamboni_soln('checkerboard.png');
% % 		Output image(s) should be identical to that produced by solution file
% % 
% zamboni('spongebobimg.png');
% zamboni_soln('spongebobimg.png');
% 
% % 		Output image(s) should be identical to that produced by solution file
% % 
% zamboni('flag.png');
% zamboni_soln('flag.png');

% 		Output image(s) should be identical to that produced by solution file

match1 = checkImage('blur_checkerboard.png','blur_checkerboard_soln.png');
match2 = checkImage('blur_bruins.png','blur_bruins_soln.png');
match3 = checkImage('blur_spongebobimg.png','blur_spongebobimg_soln.png');
match4 = checkImage('blur_flag.png','blur_flag_soln.png');