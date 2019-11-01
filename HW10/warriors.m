function [newSa, description] = warriors(sa, field)

% Write a function that takes in an 1xN structure array and a field name of a statistic
%     that is the most important in a particular battle. 
% Each structure in the array represents a different clan of cats. 
% Based on the values of the field from the given field name (second input) which 
%     are guaranteed to be of type double, you will determine which clans battle and 
%     who will win. 
% The clan with the highest value in the given field will win in a warrior battle 
%     against the clan with the lowest value in the given field. 
% Any intermediary clans will not be affected by the battle. 
% Make the following updates to the structure array based on this battle:
%     1. The winning clan's structure's value in the field given by the second input 
%         should be doubled.
%     2. The winning clan's structure's value of the  Territories field, represented 
%         by a cell array of strings, should be updated to include the values of the  
%         Territories field in the losing clan's structure.
%     3. The losing clan's value in the field given by the second input should be 
%         set to zero.
%     4. The losing clan's value for the  Territories field should become an  empty cell 
%         array ,{} .
%     5. Sort the entire array in descending order based on the values in the field 
%         given by the second input. Do this using the  'descend'  input to sort.
% In addition to updating the structure array, the function should also output a descriptive
% statement in the following format:
%          'Following the warrior code, fearless leader <winning leader> led
%               <winning clan> to victory against <losing clan>.'

vals = [sa.(field)]; %gets all the values for the given field
[maxVal,indxMax] = max(vals); %highest value for that attribute
[minVal,indxMin] = min(vals);

winClan = sa(indxMax);
loseClan = sa(indxMin);

winClan.(field) = winClan.(field) * 2; %double winning clan's field
loseClan.(field) = 0; %losing clan's field set equal to 0

winClan.Territories = [winClan.Territories loseClan.Territories]; %add losing clan's territory to winning clan's territory
loseClan.Territories = {}; %losing clan loses territory

sa(indxMax) = winClan; %put edited clans back into original structure array
sa(indxMin) = loseClan;

newSa = sa;
[sorted,indx] = sort([newSa.(field)], 'descend'); %sort clans according to field value
newSa = newSa(indx); %sort new structure array

description = sprintf('Following the warrior code, fearless leader %s led %s to victory against %s.', winClan.Leader, winClan.Name, loseClan.Name);

end