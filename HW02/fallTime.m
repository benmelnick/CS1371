function [time] = fallTime(height)

a = 9.8;
%d = vt + 0.5at^2 --> vt = 0 --> d = 0.5at^2
%t = (2d/a)^0.5
time = round((2 * height / a)^(1/2), 2);

end