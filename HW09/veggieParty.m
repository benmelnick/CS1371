function [sorted, topIngredients] = veggieParty(ca, desiredRating, ingredientsFile)

% Write a function called  veggieParty that takes in a cell array of vegetarian 
%     dishes with their rating scores and sorts the cell array based on a specific 
%     rating type. 
% The function should also determine the ingredients needed to make the top rated dish.
% The provided cell array input will contain all the possible dish options in the 
%     first column, and various types of rating scores for each dish in the other columns. 
% The first row of the cell array will contain the headers for each column. 
% Determine which column contains the rating of interest, as specified by the second 
%     input, and sort the entire cell array based on the values from this column in 
%     descending order, such that the top rated dishes according to the rating type 
%     are at the top of the array.

% Then, determine the ingredients of the top rated dish using the text file given 
%     as the third input. 
% Each line in the text file will be formatted in the following way:
%              <dish>: <ingredient1>,<ingredient2>,...<ingredientN>
% Output the sorted cell array of dishes with ratings and the 1xN cell 
%     array of the ingredients needed to make the top rated dish. 
% The ingredient array should be in the same order as in the text file.

[r,c] = size(ca);
maxDish = '';
for i = 2 : c %run through first row - start with second column
    currentRating = ca{1,i}; %gets rating
    if strcmp(currentRating, desiredRating) %finds desired rating
        ratingCol = ca(2:end,i); %gets all the ratings
        ratingCol = cell2mat(ratingCol);
        [sorted,indx] = sort(ratingCol, 'descend'); %sorts ratings
        temp = ca(2:end,:); %temporary array - excludes first row (category names)
        temp = temp(indx,:);
        ca(2:end,:) = temp; %rearranges the cell array
        
        [maxR,maxIndx] = max(sorted);
        maxDish = ca(maxIndx + 1,1); %gets dish name with the highest rating
        %need maxIndx + 1 to account for the first row - maxIndx is sorted
        %from second to last row
    end    
end    
sorted = ca;

fh = fopen(ingredientsFile);
line = fgets(fh);

topIngredients = [];
while ischar(line) 
    if contains(line,maxDish) %if line contains the dish
        [dish,rem] = strtok(line,':'); %removes dish name
        [ingredients,~] = strtok(rem,':'); %removes colon before list
        ingredients = ingredients(2:end); %remove space after colon
        while contains(ingredients, ',') %while there is a comma in list
            [ingred,ingredients] = strtok(ingredients,',');  
            topIngredients = [topIngredients {ingred}]; %add the ingredient to the cell array
        end    
    end    
    line = fgets(fh);
end    
%the last cell in topIngredients has an extra space
last = topIngredients{1,end};
topIngredients(1,end) = {last(1:end-1)}; %removing the last space
end