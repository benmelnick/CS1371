function [new] = garfield(info)

% Write a function that iterates through the fields of a structure vector. 
% If any of the fields within a structure in the array contain the value  'Monday' , 
%     regardless of case, the entire structure should be removed.

fields = fieldnames(info);
remove = []; %empty vector
for i = 1 : length(fields)
    field = fields{i}; %getting field name - then have to look through values
    vals = {info.(field)}; %putting all the values in field into cell array
    for j = 1 : length(vals)
        cur = vals{j}; %iterate through all the values in the field, see if it contains monday
        if strcmp(lower(cur), 'monday')
            remove = [remove j]; %add on index of monday
        end
    end
    info(remove) = [];
    remove = []; %set back to empty
end
new = info;
end