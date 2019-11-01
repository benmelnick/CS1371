function [out1,out2] = deepestDive(ca)
    
maxLayers = 0;
vec = [];

for i = 1 : length(ca)
    item = ca(i);
    count = 0;
    while iscell(item)
        item = item{:};
        count = count + 1;
    end
    vec = [vec item];
    if count > maxLayers
        maxLayers = count;
    end
end
vec = sort(vec);

out1 = maxLayers;
out2 = vec;

end