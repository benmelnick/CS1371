cellArr = {'bambi','PAN','lightyear','Mulan','babs'};

phrase = [];
for i = 1 : length(cellArr)
     str = cellArr{i};
     mid = ceil(length(str) / 2);
     if mod(length(str),2) == 0
         phrase = [phrase str(mid:mid+1)];
     else
        phrase = [phrase str(mid)];
     end
end
                  
    