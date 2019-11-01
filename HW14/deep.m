function [max,index] = deep(ca)

maxLayers = 0;
indx = 0;
for i = 1:length(ca)
    item = ca(i);
    count = 0;
    while iscell(item)
        item = item{1};
        count = count + 1;
    end
    if count > maxLayers
        maxLayers = count;
        indx = i;
    end
end
max = maxLayers;
index = indx;
end