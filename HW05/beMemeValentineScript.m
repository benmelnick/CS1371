% Test Cases:
% beMemeValentine('kanye.png', 'kanyeBack.png');
% beMemeValentine_soln('kanye.png', 'kanyeBack.png');
match1 = checkImage('kanye_Meme.png', 'kanye_Meme_soln.png');
% 		Output image(s) should be identical to that produced by solution file
% 
% beMemeValentine('cage.png', 'cageBack.png')
% beMemeValentine_soln('cage.png', 'cageBack.png')
match2 = checkImage('cage_Meme.png', 'cage_Meme_soln.png');
% 		Output image(s) should be identical to that produced by solution file
% 
% beMemeValentine('voldemort.png', 'voldemortBack.png');
% beMemeValentine_soln('voldemort.png', 'voldemortBack.png');
match3 = checkImage('voldemort_Meme.png','voldemort_Meme_soln.png');
% 		Output image(s) should be identical to that produced by solution file