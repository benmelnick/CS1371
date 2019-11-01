function [final] = puzzleBox(arr, rowShift, colShift)

%shift rows by up to last element of rowShift
%shift columns by up to last element of colShift

[r,c] = size(arr);

rowVal = rowShift(end);
rowsToShift = rowShift(1 : end - 1) - 1;

colVal = colShift(end);
colsToShift = colShift(1 : end - 1) - 1;

shiftedRows = mod(rowsToShift + rowVal, r);
shiftedCols = mod(colsToShift + colVal, c);

finalRows = shiftedRows + 1;
finalCols = shiftedCols + 1;

arr(finalRows,:) = arr(rowsToShift + 1,:);
arr(:,finalCols) = arr(:,colsToShift + 1);

final = arr;

end