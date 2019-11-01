function albumArt(file)

% Given a text file, you must read the average value of all the characters in the 
%     image using the table below:
%         '@' = 1 '%' = 2 '?' = 3 '!' = 4 '*' = 5 '~' = 6 '.' = 7 ' ' = 8
% Once you have found the average value of the all the characters in the text file 
%     based on darkness, you must determine a descriptive statement. If the average 
% darkness is greater than 5, the descriptive statement is  
%     'Very light cover, probably good music for kids!' , 
%     if the average darkness is greater than 3, the descriptive statement is  
%     'Cover of medium darkness, seems like it could be a bit too edgy...' , 
%     and for all other possibilities the descriptive statement is  'Cover is very 
%     dark, looks like something quite inappropriate for children.' . 
% Then, print out a text file named  '<name of the file>_review.txt'  with the 
%     following form:
%       Review of <filename without the extension>'s album art:
%       The cover has a darkness score of <average of all characters>.
%       <The descriptive statement>

%creating new file to print to
[a,b] = strtok(file,'.');
new = [a '_review.txt'];
fhNew = fopen(new, 'w');

fh = fopen(file, 'r'); %open input file
line = fgetl(fh); %use fgetl() to not get the new line character - otherwise it will try to read new line character

darkCount = 0; %count of darkness values
charCount = 0; %count of number of characters in text value
while ischar(line)
%line will always be a combo of the 8 characters above
charCount = charCount + length(line);
    for i = 1 : length(line)
        char = line(i);
        switch char
            case {'@'}
                darkCount = darkCount + 1;
            case {'%'}
                darkCount = darkCount + 2;
            case {'?'}
                darkCount = darkCount + 3;
            case {'!'}
                darkCount = darkCount + 4;
            case {'*'}
                darkCount = darkCount + 5;
            case {'~'}
                darkCount = darkCount + 6;
            case {'.'}
                darkCount = darkCount + 7;
            case {' '}
                darkCount = darkCount + 8;
        end
    end
    line = fgetl(fh);
end

avg = darkCount / charCount;
description = '';
if avg > 5
    description = 'Very light cover, probably good music for kids!';
elseif avg > 3 & avg < 5
    description = 'Cover of medium darkness, seems like it could be a bit too edgy...';
else
    description = 'Cover is very dark, looks like something quite inappropriate for children.';
end

newAvg = round(avg,2);

fprintf(fhNew, 'Review of %s''s album art:\n', a);
fprintf(fhNew, 'The cover has a darkness score of %0.2f.\n', newAvg);
fprintf(fhNew, description);

fclose(fh);
fclose(fhNew);
end