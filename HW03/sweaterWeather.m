function [woven] = sweaterWeather(vec1, vec2)

%Given the character vectors  ?ILv ALB? and  ? oeMTA!? , 
%your function should output thevector ?I  Love MATLAB!?

woven = [vec1 vec2];
woven(2 : 2 : end) = vec2(1 : end);
woven(1 : 2 : end) = vec1(1 : end);

end

