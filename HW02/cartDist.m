function [distance] = cartDist(x1, y1, x2, y2)

difX = (x2 - x1)^2;
difY = (y2 - y1)^2;

distance = round((difX + difY)^(1/2), 2);

end