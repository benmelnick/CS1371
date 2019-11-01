function [podium] = pascalsPodium(rows)

c = (rows * 2) - 1;
middle = ceil(c/2);
pascal = zeros(rows, c);
pascal(1, middle) = 1; %first row middle column is always 1
pascal(rows, 1) = 1; %edges of last row will always be 1 - helps to eliminate indexing error
pascal(rows,c) = 1;

for i = 2 : rows
    for j = 2 : c - 1 %start at the second column end at second to last - edges columns will always be 0 leading up to last column
        pascal(i,j) = pascal(i - 1,j-1) + pascal(i-1,j+1);
    end
end

podium = pascal;

end