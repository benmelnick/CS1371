function musicAwards(file,categoryToChange,substitute)

% Write a function that will read through a text file to find the given category 
%     (2nd input), and change the winner to the one specified (3rd input). 
% Then write the results to a new file, titled <originalFileName>_updated.txt.

% Example:
% results.txt:
%       Album of the year: 24K Magic - Bruno Mars
%       Song of the year: Despacito - Luis Fonsi
%       Best Rap Song: HUMBLE. - Kendrick Lamar
% >> musicAwards('results.txt', 'Song of the year', 'That's What I Like - Bruno Mars')
% results_updated.txt:
%       Album of the year: 24K Magic - Bruno Mars
%       Song of the year: That's What I Like - Bruno Mars
%       Best Rap Song: HUMBLE. - Kendrick Lamar

fh = fopen(file); %first have to open the file
line = fgets(fh); %get first line 
%fgets() returns new line character - new line character will be printed in
%while loop

[a,b] = strtok(file,'.');
new = [a '_updated.txt'];
fhNew = fopen(new, 'w');

while ischar(line) %while line returns character - aka until there are no more lines
    if contains(line, categoryToChange) %if line of file contains the character
        newLine = [categoryToChange ': ' substitute '\n']; %replace line with new
        fprintf(fhNew,newLine); %printing to new file
    else
        fprintf(fhNew,line);
    end
line = fgets(fh);
end
fclose(fh);
fclose(fhNew);

end