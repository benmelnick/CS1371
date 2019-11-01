function mashUp(song1, song2, instructions)

% Given the filenames of text files that contain two different songs and a third 
%     file of instructions, you will combine different lines together in a new 
%     text file. 
% The instructions will always follow this format:
%         <song # (1 or 2)>-<line #>
% The name of your new text file should be  <song1>_<song2>_mashUp.txt , 
%     where  <song1> and <song2>  are the filenames from the input, without the extension.

fhInstruct = fopen(instructions, 'r');

[s1,rem] = strtok(song1,'.');
[s2,rem2] = strtok(song2,'.');

new = [s1 '_' s2 '_mashUp.txt']; %file to write to
fhNew = fopen(new,'w');

lineInstruct = fgetl(fhInstruct);
lineCount = 1; %counter used later to account for new line character
while ischar(lineInstruct) %as long as there are instructions
    fh1 = fopen(song1, 'r'); %open the two song files
    fh2 = fopen(song2, 'r'); %have to be opened so that the songs can be read from beginning every time
    [song,rem] = strtok(lineInstruct,'-'); %song to read from
    song = str2num(song);
    line = strtok(rem,'-'); %line from that song
    line = str2num(line);
    
    count = 0; %counter to retrieve line from the song
    while count < line %while loop will stop once desired line has been read - at this point count will exceed line
        if song == 1
            songLine = fgetl(fh1);
        elseif song == 2
            songLine = fgetl(fh2);
        end
        count = count + 1;
    end
    if lineCount == 1
        fprintf(fhNew,songLine);
    else
        fprintf(fhNew,'\n%s',songLine);
    end
    lineCount = lineCount + 1;
    lineInstruct = fgetl(fhInstruct);
end

fclose(fhInstruct);
fclose(fh1);
fclose(fh2);
fclose(fhNew);
end