function [direction] = olympicTorch(map, path)

% Here is an example of a map that might be used as the first input:
%                                    #######
%                                    #..  *#
%                                    #.. ..#
%                                    #   ..#
%                                    # ....#
%                                    #0....#
%                                    #######
% The map will be surrounded by a border, represented with hash characters ( '#') . 
%     The single starting point (which can be anywhere on the map) is represented 
%     by the  zero  character ( '0') , and the single destination is represented 
%     as an asterisk character ( '*') . Areas that are not part of the path are 
%     filled in with period characters ( '.') .
% Continued...
%  
% Here is an example of a path:
%  'uduurruurlrr'
% The characters in the path string represent the direction in which you should move:
%         'u'  - go one space up, 
%         'r'  - go one space right, 
%         'd'  - go one space down, 
%         'l'  - go one space left.
% Start at the  '0'  character. If the example path is followed, the destination is 
%     reached at the end of the path. Since no period or hash characters were 
%     crossed, the example path is a valid path.
% 
% If the path is valid, output a logical  true , and if the path is not valid, 
%     output a logical false . 
% 
% A path will be valid if and only if it does not cross over any period or hash 
%     characters and ends up on the destination (the asterisk).

% path is not valid if it crosses over the end point and ends up somewhere
% else --> to check this check if i in for loop is length of vector to see
% if there are no more steps remaining

[r,c] = size(map);

for i = 1 : r %finding row and col of 0
    for j = 1 : c
        if map(i,j) == '0'
            row = i;
            col = j;
        end
    end
end

for i = 1 : length(path)

    dir = path(i);
    switch dir
        case {'u'}
            row = row - 1; %move up in one direction
        case {'d'}
            row = row + 1; %move down
        case {'r'} %move right
            col = col + 1;
        case {'l'} %move left
            col = col - 1;
    end
        
    if map(row, col) == '.'
        direction = 0; %returns fasle - path is not valid since a period is crossed
        break; %break statement to close loop; invalid the second period is crossed
    elseif map(row, col) == '#'
        direction = 0; %returns false - path is not valid since a hastag is crossed
        break;
    elseif map(row, col) == '*' %reaches ending point
        if i == length(path) %this is the last path direction, this point will not be crossed
            direction = 1;
        end
    else
        direction = 0;
    end   
end 

end