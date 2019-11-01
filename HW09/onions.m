function [positions, layers] = onions(ca)


% Given an input cell array, write a function that searches through the elements 
%     of a cell array. 
% At each position, determine how many layers of cells there are until the base 
%     layer (when the next layer is no longer a cell). 
% Your function should output the row and column indices of the element of the cell 
%     array with the greatest number of layers, and how many layers this element has.

[r,c] = size(ca);
maxCount = 0;
maxRow = 0; %indices for cell with most amount of layers
maxCol = 0;
for i = 1 : r
    for j = 1 : c
        item = ca(i,j); %returns cell
        count = 0; %count for number of layers
        while iscell(item)
            item = item{1}; %removes one layer
                %ex: ca = {{{'hello'}}} --> ca = ca{1} --> ca = {{'hello'}}
            count = count + 1;
        end
        if count > maxCount
            maxCount = count;
            maxRow = i;
            maxCol = j;
        end
    end    
end

positions = [maxRow maxCol];
layers = maxCount;

end