function [area] = orangePeel(volume)

%v = (4/3)(pi)r^2
%r^2 = 0.75v/pi

r = ((0.75 * volume) / pi)^(1/3);
area = round((4 * pi * r^2), 2);

end