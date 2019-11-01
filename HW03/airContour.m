function [change] = airContour(warm, cold)

%same contour --> no change (0)
%different contour --> change (1)

warmDiff = diff(warm);
warmCold = diff(cold);
%compute sign of each element in vector --> compare vectors using isequal()
w = sign(warmDiff);
c = sign(warmCold);

change = ~isequal(w, c); %1 if different, 0 if the same

end