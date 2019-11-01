function asciiGarden(file)

% Write a function that reads in an Excel file describing the layout of your garden, 
%     and creates an ASCII art representation of your new garden as a text file, 
%     named as follows: ascii_<Name of the Excel file without extension>.txt .
% Each column of the Excel file will contain the following information in this order:
%   1. The names of the fruits and vegetables to be planted in the garden
%   2. The character representation corresponds to each plant
%   3. The number of rows of the garden that should contain the fruit or vegetable
% Your garden plot should have twice as many columns as rows.
% All test cases are guaranteed to have full vegetables planted; 
% for instance, if a vegetable is three characters long, the number of columns
%         will be divisible by three.

[a,b] = strtok(file,'.');
new = ['ascii_' a '.txt'];
fhNew = fopen(new, 'w');

[num,txt,raw] = xlsread(file);
[r,c] = size(raw);

rows = sum(num); %number of rows to print
cols = rows * 2;

rowCount = 1; %index used to account for new line character
for i = 1 : r %iterate through rows of excel table
    fruitSymbol = txt{i,2}; %gets char to print - note: txt is a cell
    symbolLength = length(fruitSymbol); %number of characters in fruit symbol
    numToPrint = cols / symbolLength; %gets number of symbols to print to file
    vegRows = num(i,1); %gets number of rows to print    
    for j = 1 : vegRows %go through assigned number of rows
        for a = 1 : numToPrint %print designated number of times
             fprintf(fhNew, fruitSymbol);
        end
        if rowCount < rows | j < vegRows %if not on the very last row
            fprintf(fhNew, '\n');
        end
        rowCount = rowCount + 1;
    end
end

fclose(fhNew);
end