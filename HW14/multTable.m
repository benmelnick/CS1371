function [weighted, unweighted] = multTable(table)

countCorrect = 0;
countTotal = 0;

weightedCorrect = 0;
weightedCount = 0;

%checking the first row
firstRow = table(1,:);
for i = 1 : length(firstRow)
    if firstRow(i) == i
        countCorrect = countCorrect + 1;
        weightedCorrect = weightedCorrect + i;
    end
    countTotal = countTotal + 1;
    weightedCount = weightedCount + i;
end


%check the first column
firstCol = table(:,1);
for i = 1 : length(firstCol)
   if firstCol(i) == i
       countCorrect = countCorrect + 1;
       weightedCorrect = weightedCorrect + i;
   end
   countTotal = countTotal + 1;
   weightedCount = weightedCount + i;
end

%checking everything else
[r,c] = size(table);
for i = 2 : r
    for j = 2 : c
        val = table(i,j);
        if val == i * j
            countCorrect = countCorrect + 1;
            weightedCorrect = weightedCorrect + val;
        end
        countTotal = countTotal + 1;
        weightedCorrect = weightedCorrect + (i * j);
    end
end

weighted = (weightedCorrect / weightedCount) * 100;
unweighted = (countCorrect / countTotal) * 100;
end