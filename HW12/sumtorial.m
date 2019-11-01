function [out] = sumtorial(in)

% Write a function that takes in a number, and recursively finds the sumtorial of this number. 
% To find the sumtorial, use the following information:

% sumtorial(1) = 1
% sumtorial(n) = n + sumtorial(n-1);

%use recursion to compute sumtorial until n = 1

out = 0;
if in == 1
   out = out + 1;
else
   out = in + sumtorial(in-1);
end

end