function [newTom] = tomAndJerry(oldTom, newAspects, remove)

% You will be given three inputs. 
% The first one will be a structure representing Tom. 
% The second one will be a structure representing the aspects of himself he wants to 
%     change. 
% The third will be a character vector of a field to remove.
% Write a function that goes through the fields of the second structure and uses them 
%     to change the values of the same field names of the first structure. 
% Then remove the field named by the third input from the first structure, and 
%     output the edited first structure.

fieldsOld = fieldnames(oldTom);
fieldsNew = fieldnames(newAspects);

for i = 1 : length(fieldsOld) %go through original fields, match to new period
    old = fieldsOld{i}; 
    for j = 1 : length(fieldsNew)
        new = fieldsNew{j};
        if strcmp(old,new) %natching categories
            oldTom.(old) = newAspects.(new); %replacing old value with new value
        end
    end
end

newTom = rmfield(oldTom,remove);

end