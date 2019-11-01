[num, txt, raw] = xlsread('shows.xlsx');
headers = raw(1, :);
[r, c] = size(raw);
mask = strcmp(headers, 'Rating');
inds = [];
for i = 2:r
    elem = raw{i, mask};
    if ~isnumeric(elem)
        inds = [inds, i];
    end
end
raw(inds, :) = [];
[~, inds2] = sort(headers);
fixed_shows = raw(:, inds2);