function [description] = schrodingersCat(sa, startingPos)

% You are given a structure array and a set of indices within the structure array at 
%     which to start. 
% Each structure in the array contains only one field, called  next . 
% The  next field of each structure contains either a 1x2 vector of the indices of 
%     the next structure to search or a character vector describing the state of the cat. 
% The character vector describing the cat will either be 'alive cat'  or  'dead cat' .
% To find the cat, first check the structure at the index given by the second input. 
% Next, check the structure at the indices given in the  next field of the previous 
%     structure you checked. 
% This process should continue until you encounter the cat, whether it is dead or alive. 
% Be sure to keep a count of how many steps you have gone through before you reach the cat. 
% Your output statement should have the following form:
%        'The <alive or dead cat> was found at position (<row>,<column>)
%                           after <num steps> steps.'

startRow = startingPos(1);
startCol = startingPos(2);
steps = 1;

row = 0;
col = 0;

search = sa(startRow,startCol); %search the structure array
while isnumeric(search.next) %if next contains new position to look for
    indx = search.next;
    row = indx(1);
    col = indx(2);
    search = sa(row,col);
    steps = steps + 1;
end
if ischar(search.next) %statement about dead or alive cat
    if contains(search.next, 'alive')
        description = sprintf('The alive cat was found at position (%d,%d) after %d steps.',row,col,steps);
    elseif contains(search.next, 'dead')
        description = sprintf('The dead cat was found at position (%d,%d) after %d steps.',row,col,steps);        
    end
end

end