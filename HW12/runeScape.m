function [description] = runeScape(charSt,itemSt)

% % Write a function to recursively calculate the amount of experience you need to level up 
%     in a desired skill. 
% Your character is represented by a 1x1 structure and contains your username (as a string) 
%     as well as all your characters' skills as fields. 
% Each skill field contains your character's level in that skill as a double.
% % The item you want your character to equip will also be represented by a 1x1 structure. 
% One field, Name , will be the name of the item as a string, and the rest of the fields will 
%     be double values representing the skill level requirements for that item.
%recursion comes into play with calculating experience

username = charSt.Username;
itemName = itemSt.Name;

itemFields = fieldnames(itemSt);

totalPointsNeeded = 0;
for i = 2:length(itemFields) %check all the relevant fields in items - need to see level in character
    %start at 2 - first field is always the name of the item
    itemField = itemFields{i}; %get skill category
    charLevel = charSt.(itemField); %get level in that skill
    if charLevel < itemSt.(itemField) %not enough points to get the item
        %calculate points needed in that category
        for j = charLevel + 1 : itemSt.(itemField) 
            points = exp(j);
            totalPointsNeeded = totalPointsNeeded + points;
        end    
        
    end    
end

description = sprintf('%s needs %d more experience points to use the %s.',username,totalPointsNeeded,itemName);

end

function [out] = exp(level)

%exp(n) = ceil(n^(7/2) + exp(n-1)) - gives experience points needed to only
%go up one level - going from 30 to 32 would require exp(31) + exp(32)
out = 0;
    if level == 2 %base case
        out = 83;
    elseif level > 2
        out = ceil(level^(7/2) + exp(level - 1));
    end 
    
end
