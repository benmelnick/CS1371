function [message] = fruitDecryption(encrypted)

% Write a function that will take an encrypted message and decipher it by following rules.
% 1. Remove any numbers, punctuation characters, and spaces.
% 2. Move all uppercase letters to the beginning of the vector, followed by all lowercase
% letters (while preserving the order of both).
% 3. Make any remaining characters lowercase.
% 4. Remove any character that comes immediately AFTER one of the character in the word
% "fruit" ( 'f' ,  'r' ,  'u' ,  'i',  and  't')  . If the last letter is one of these characters, you can ignore it.

values = double(encrypted); %ASCII values of message

%logical vector containing true where there IS NOT lowercase and capital
%letters
lettersOnly = ~((values >= 65 & values <= 90) | (values >= 97 & values <= 122)); 

%removing values - replacing non letters with empty space
values(lettersOnly(1 : end)) = [];

%uppercase leters - logical vector, true = uppercase letter
upper = values >= 65 & values <= 90;
upperVals = values(upper(1 : end)); %vector of ASCII values of upper characters
upperVals = upperVals + 32; %then have to convert uppercase letters to lowercase

%lowercase letters - logical vector, true = lowercase letter
lower = values >= 97 & values <= 122;
lowerVals = values(lower(1 : end)); %vector of ASCII values of lower characters

%new vector with uppercase values in front, lowercase values in back
newVals = [upperVals lowerVals];
newChar = char(newVals(1 : end)); %converting reorganized ASCII values into new message ; end - 1 to ignore last character

%find all indices first - indices will change if one is removed after
%another - this will ensure all letters need to be removed to make complete
%phrase
findF = strfind(newChar(1:end - 1), 'f') + 1; %end - 1 so last letters aren't picked up
findR = strfind(newChar(1:end - 1), 'r') + 1;
findU = strfind(newChar(1 : end - 1), 'u') + 1;
findI = strfind(newChar(1:end-1), 'i') + 1;
findT = strfind(newChar(1:end-1), 't') + 1;

remove = [findF findR findU findI findT];
newChar(remove(1:end)) = [];

message = newChar;

end