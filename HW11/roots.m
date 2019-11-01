function [root] = roots(x,y,upper,lower)

% The bisection method is a root finding algorithm that, given an interval [a,b] that 
%     contains only one root, iteratively cuts that interval in half, keeping the half 
%     that contains the root.

% 1. Given a set of x and y values, determine the coefficients of the highest order 
%       unique polynomial that passes through all the points.
% 2. Calculate the midpoint of the interval using the following formula : 
%     xMid = (lowerBound + upperBound) / 2
% 3. Calculate the function values at the lower bound, the upper bound, and the midpoint
% using the coefficients determined in step 1.
% 4. If the sign of the function value at the midpoint is opposite of the sign of the function
% value at the lower bound, replace the upper bound with the midpoint.
% 5. Otherwise, if the sign of the function value at the midpoint is opposite of the sign of the
%  function value at the upper bound, replace the lower bound with the midpoint.
% 6. Repeat steps 2 through 5 until the absolute value of upperBound ? lowerBound  (the
%  upperBound + lowerBound approximate error) is less than 0.0001. 
%     Your final guess for the root will be the midpoint of the final interval.

%step 1: find polynomial
%The degree of the highest order unique polynomial that fits the data is the length 
%     of the data vector minus 1.
coeffs = polyfit(x,y,length(x) - 1); 

while abs(upper - lower) > 0.001
    %step 2: calculate midpoint of interval
    mid = (upper + lower) / 2;
    %step 3: evaluate bounds and midpoint along polynomial
    upEval = polyval(coeffs,upper);
    lowEval = polyval(coeffs,lower);
    midEval = polyval(coeffs,mid);
    %step 4 and 5: checking the values
    if (midEval * lowEval) < 0 %midEval and lowEval have opposite signs
        upper = mid;
    elseif (midEval * upEval) < 0 %midEval and upEval have opposite signs
        lower = mid;
    end
end

root = round(mid,2);

end