function formation(dancers, file)

% Write a function that that takes in the vector of dancers in each line and 
%     outputs a file showing the dancers? formations. To find the dancers? 
%     formations and create the output file, follow these rules:
% 1. Find the maximum value in the input vector. Each line of the formation will have 
%     this many places.
% 2. For each line of the formation:
%   a. Put the specified number of dancers from the input vector in the line. For
%   example, if the first number in the vector is 3, there are 3 dancers in the first line.
%   b. Align the dancers along the center. If there are 3 dancers and 5 spaces, there will
%   be one empty space at each end of the line.
%   c. Use a  1  to represent a dancer and a  0  for a vacant position.
% 3. The output file should print the lines in the following format:
%               Line <num> has the following line up: <formation>.
% a. <num> refers to the current line number, which should start at 1 and increment
%     by 1 for each line, and  <formation>  refers to the dancers? formation.
% b. There should be two spaces in between the numbers representing the positions. 
% 4. Use the second input to title the output file.

fh = fopen(file, 'w'); %open file with writing access

maxDancers = max(dancers);
for i = 1 : length(dancers) %iterate through each row of the array and create dance formation
    num = dancers(i); %number of dancers in this line
    vec = ones(1,num); %create a vector of ones - represents the dancers
    diff = maxDancers - num; %determine how many zeros there needs to be - diff will always be an even number
    if diff > 0
        for j = 1 : diff %adding zeros into vector
            if mod(j,2) ~= 0 %odd number
                vec = [0 vec]; %add 0 to the front
            else
                vec = [vec 0];
            end
        end
    end
    vec = num2str(vec);
    if i == 1 %if on first line do not print new line character
        fprintf(fh,'Line %d has the following line up: %s',i,vec);
    else
        fprintf(fh,'\nLine %d has the following line up: %s',i,vec);
    end
end

fclose(fh);
end