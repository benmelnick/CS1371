function [magic] = magicSquarePair(arr1, arr2)

% Write a function in MATLAB that takes in two arrays and checks whether they 
%     are both magic squares by outputting a logical. 
% Remember the key aspects to check for a magic square:
%   The array must be square
%   All elements must be unique
%   All columns and rows add to the same number
%   Both  diagonals add to the same number as the rows and columns

%note: a 1 x 1 matrix is also a magic square

%both arrays start assumed to be magic, assigned value of 1, then will be
%put through all the tests
magic1 = 1;
magic2 = 1;

[r1,c1] = size(arr1);
[r2,c2] = size(arr2);

%check that matrices are square
square1 = r1 == c1; %1 if true, 0 if false --> later mutlipled by magic1 and magic2
square2 = r2 == c2;

%check for unique values --> create new matrix of unique values, if the
%same as the original, then values are unique
unique1 = unique(arr1); %unique also sorts elements
[ru1, cu1] = size(unique1); %compute row and col of unique array
isUnique1 = (r1*c1) == (ru1 * cu1); %logical value comparing sizes --> if same number of values in each array there are unique values in original array

unique2 = unique(arr2);
[ru2, cu2] = size(unique2);
isUnique2 = (r2 * c2) == (ru2 * cu2);

%all columns and rows and diagonals add to the same number
totalRows1 = transpose(sum(arr1,2)); %computing sum of the rows --> output is row vectors (transpose needed to get row vectors)
totalRows2 = transpose(sum(arr2,2));

totalCols1 = sum(arr1); %computing sum of numbers along each column
totalCols2 = sum(arr2);

totalRightDiag1 = sum(diag(arr1)); %compute sum of right diagonal
totalRightDiag2 = sum(diag(arr2));

backwards1 = arr1(:,end:-1:1); %flip the array so that other diagonal can be comouted
backwards2 = arr2(:,end:-1:1);
totalLeftDiag1 = sum(diag(arr1)); %compute sum of left diagonal
totalLeftDiag2 = sum(diag(arr2));

sums1 = [totalRows1 totalCols1 totalRightDiag1 totalLeftDiag1]; %vector of sums
match1 = max(sums1) == min(sums1);

sums2 = [totalRows2 totalCols2 totalRightDiag2 totalLeftDiag2]; %vector of sums
match2 = max(sums2) == min(sums2);

isSquare1 = square1 * isUnique1 * match1;
isSquare2 = square2 * isUnique2 * match2;

magic = isSquare1 == 1 && isSquare2 == 1; %both have to be 1 to return 1


end