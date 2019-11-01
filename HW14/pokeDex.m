function updated = pokeDex(info,newInfo)

newField = newInfo{1};
for i = 2 : length(newInfo)
    info(i-1).(newField) = newInfo{i};
end

stats = [info.Stats];
attack = stats(1:2:end);
[~,indx] = sort(attack);
info = info(indx);

type = {info.Type};
mask = strcmp(type,'Dragon');
updated = info(mask);

updated = rmfield(updated,'Type');

end