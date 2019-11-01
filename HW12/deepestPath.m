function [description] = deepestPath(ca)

% Write a recursive function that will search through a nested cell array to find the 
%     maximum depth of nested cells. 
% Then output the string  'The deepest path is <num layers> cells deep.'.
% Hints:
%   What should the depth be when the input is not a cell/cell array?
%   You will need a wrapper function to format the output string.
%   Consider how you can call the recursive function on every element in the cell array.

description = sprintf('The deepest path is %d cells deep.', deepestPathHelper(ca));

end

function [maxLayers] = deepestPathHelper(ca)
    maxLayers = 0;
    for i=1:length(ca)
        if iscell(ca{i})
            layers = deepestPathHelper(ca{i});
            if layers > maxLayers
                maxLayers = layers; 
            end
        end
    end
    maxLayers = maxLayers+1;
end