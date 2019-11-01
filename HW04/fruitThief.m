function [final] = fruitThief(sus1, sus2, sus3, sus4)

% %banned functions: isequal(), isequaln()
% % Each input to the function is a logical vector corresponding to the answers 
% a suspect gives on the lie detector. Each element of the vectors represent a 
% different question. Three of the suspects will have the exact same answers, 
% but one suspect?s answers will be slightly?or completely?different than the others? 
% answers. Using your knowledge of logical indexing and masking, determine which 
% of the four suspects is lying, and thus, is the fruit thief.
% % The output string will be of the form  'Suspect #<num> is the fruit thief.' , 
% where <num>  corresponds to the suspect number who stole the fruit. 
% The number is determined by the input order.

% % The suspect who lied, and stole the fruit, will have  at least one  answer 
% that is different from the other suspects? answers, but could differ up to every answer.
% % You  may not  use the  isequal()  function to code this problem. 
% Use of the  isequal() function will result in zero credit for this problem. 
% However, the use of  isequal()  to check that your output matches the solution 
% outputs is encouraged.
% % The output string ends with a period. Do not forget that period!

%remember the any() and all() functions

%logical vector comparing sus1 and sus2 - if one element is false then one
%of these is the thief
checkOneTwo = sus1 == sus2;
matchOneTwo = all(checkOneTwo); %returns true if all answers match

checkOneThree = sus1 == sus3;
matchOneThree = all(checkOneThree); %returns true if all answers match

checkOneFour = sus1 == sus4;
matchOneFour = all(checkOneFour); %returns true if all answers match

checkTwoThree = sus2 == sus3;
matchTwoThree = all(checkTwoThree); %returns true if all answers match

checkTwoFour = sus2 == sus4;
matchTwoFour = all(checkTwoFour); %returns true if all answers match

checkThreeFour = sus3 == sus4;
matchThreeFour = all(checkThreeFour); %returns true if all answers match

%build vectors containing results of each comparisons - 1 indicates
%complete match 0 indicates not a complete match
% the thief will have a vector full of zeros
checkSus1 = [matchOneTwo matchOneThree matchOneFour];
checkSus2 = [matchOneTwo matchTwoThree matchTwoFour];
checkSus3 = [matchOneThree matchTwoThree matchThreeFour];
checkSus4 = [matchOneFour matchTwoFour matchThreeFour];

truth1 = ~any(checkSus1);
truth2 = ~any(checkSus2);
truth3 = ~any(checkSus3);
truth4 = ~any(checkSus4);%false if contains any zeros

truths = [truth1 truth2 truth3 truth4];

nums = [1,2,3,4];%will be used to index what number will be written out

suspect = nums(truths(1:end)); %will return the name of the suspect

final = sprintf('Suspect #%d is the fruit thief.',suspect);

end