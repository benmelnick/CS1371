function[sides] = cookieCutter(angle)

%angle = 180(n-2) / n
%angle * n = 180n - 360
%n(180 - angle) = 360
%n = 360 / (180 - angle)
    
sides = 360 / (180 - angle);

end