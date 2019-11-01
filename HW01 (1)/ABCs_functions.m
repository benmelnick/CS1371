% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F, G, H] = ABCs_functions()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Functions
%
% Directions: 
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 


%% Part I. Functions - True or False

% Answer the following statements by setting the variables with either the 
% words 'true' or 'false' (without the single quotes). 

% 1. Functions have their own scope; that is, variables that are defined
% inside a function cannot access the workspace in which the function 
% is run (A).
A = true;

% 2. By default, functions that I write will work even if they are not in my
% current directory (B).
B = false;

%% Part II. Function Headers - Multiple Choice 

% 3. Which function header correctly defines a function called myFunc which
% has 3 inputs and 2 outputs (C).

% a: function [out1, out2] = myFunc(in1 in2 in3)
% b: function [out1, out2] = myFunc(in1, in2, in3)
% c: function (out1, out2) = myFunc[in1, in2, in3]
% d: function [in1, in2, in3] = myFunc(out1 out2)
% e: function (in1, in2, in3) = myFunc(out1, out2)

C = 'b';

% 4. Which function header correctly defines a function called myFunc with
% no inputs or outputs (D).

% a: function [out1] = myFunc(in1)
% b: function out1 = myFunc()
% c: function = myFunc
% d: function = myFunc()
% e: function myFunc

D = 'e';

% 5. Which of the following are valid matlab function headers (E).

% I:   function [out two three] = myFunc(in)
% II:  function [out] = myFunc()
% III: function (out two) = myFunc[in]

% a: I only
% b: II only
% c: I & II
% d: II & III
% e: All

E = 'c';

%% Part III. Function Scope - True or False

% If I have a valid function "cylinderCalc" defined in the current folder 
% as:
%
%               function [sa, vol] = cylinderCalc(d,h)
%               r = d./2 . 
%               sa = (2.*pi.*r).*(h+r)
%               vol = pi.*(r.^2).*h
%               end

% and I call [a b] = cylinderCalc(2,3) from the command line:

% 6. Is "a" defined in my workspace (have I assigned it a value in the
% workspace)? (F)
F = true;

% 7. Is "vol" defined in my workspace? (G)
G = false;

% 8. Is "h" defined in my workspace? (H)
H = false;

end