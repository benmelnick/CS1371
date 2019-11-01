function [description] = birdNest(classroom)

% Write a function that takes in a 1x1 structure representing a classroom. 
% The structure will have the following fields:
% 
%                                   RoomNumber
%                                  NumberSeats
%                                  ContainsBird
%                                      Exit
% 
% RoomNumber  is a double that represents the room number of the classroom, NumberSeats  
%     is a double that represents the number of seats in the classroom, and ContainsBird  
%     is a logical representing whether or not the bird was found in the room. 
% The fourth field,  Exit , represents what lies beyond the door leading out of the 
%     classroom. 
% This can either contain  any  string such as  'outside'  or it can be another 
%     1x1 structure representing an adjacent classroom.
% Your task is to search for the bird by traveling along adjacent classrooms. 
% If the bird is not found in the first classroom and the  Exit  field contains 
%     another room structure, go on to the next room and repeat the process until 
% either the bird is found or there are no more classrooms to search. 
% If you find the bird, output the following string:
%    'After an epic chase spanning <number of rooms searched> rooms, the cats
%                      found the bird in IC <room number>!'
% If you do not find the bird and run out of rooms to search, output the following string:
%     'It was a stunning chase, but the bird escaped.'

roomCount = 0;
found = false;
room = 0;
while isstruct(classroom) & found == false %while bird has not been found and there are more classrooms to be searched
    roomCount = roomCount + 1;
    if classroom.ContainsBird
        found = true; %finds the bird
        room = classroom.RoomNumber;
        description = sprintf('After an epic chase spanning %d rooms, the cats found the bird in IC %d!',roomCount,room);
    end
    classroom = classroom.Exit;
end
if ischar(classroom) & found == false
    description = 'It was a stunning chase, but the bird escaped.';
end
end