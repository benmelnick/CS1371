function maxVal = changeArray(arr)

[rows cols] = size(arr);
newArr = arr(1:ceil(rows./2), floor(cols./2):end);
minVal = min(newArr);
maxVal = max(minVal);
newArr = helper(maxVal,newArr);

end

function out = helper(val,arr)

arr = arr(:);
newArr = arr(arr >= val);
newArr = [newArr newArr];
out = newArr;

end