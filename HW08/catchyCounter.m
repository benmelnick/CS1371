function [count] = catchyCounter(file, word)

%Write a function in MATLAB that counts the number of times a certain word or 
%     phrase appears in a song's lyrics. 
% The first input will be the filename of a .txt file that contains the lyrics to a song. 
% The second input will be the word/phrase you are counting in those lyrics. 
% Your function should output the total number of times that word/phrase appears 
%     in the .txt file, regardless of case.

count = 0;
word = lower(word); %do this to ignore case
fh = fopen(file,'r');

line = fgets(fh); 
while ischar(line)
    line = lower(line); %ignore case
    k = strfind(line, word); %returns vector of indices of word or phrase
    if k > 0 %line contains word/phrase
        count = count + length(k); %length(k) provides iteration of word or phrase in the line
    end
    line = fgets(fh);
end
fclose(fh);
end