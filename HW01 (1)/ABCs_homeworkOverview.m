% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S] = ABCs_homeworkOverview(a, b, c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Homework Overview
%
% Directions: 
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 

%% Part 1: CS 1371 Homework Guide - True or False
%
% 1. Read the CS 1371 HW Guide. Failure to follow the guidelines set
%    forth in the guide will result in a loss of points on your assignment 
%    and a forfeiture of your right to request a regrade.
%
% 2. Answer the following statements by setting the variables immediately
%    following the questions to either 'true' or 'false' (without single 
%    quotes). Note that these words are reserve words in MATLAB and must be
%    written exactly as shown.

% CS 1371 is a course taught at Georgia Tech. (example1)
% example1 = true; 
%
% CS 1371 teaches students how to program in C++. (example2)
% example2 = false;

% 1. I have read the CS 1371 HW Guide and I understand the guidelines for
% completing and submitting assignments. (A)
A = true;

% 2. When I am doing a homework problem, I should follow the directions
% carefully and always make sure that I am correctly naming variables,
% files, and functions. Also, case and spelling matter when naming
% variables, files, and functions. (B)
B = true;

% 3. It is OK if my code has errors in it. (C)
C = false;

% 4. Testing my code won't help me complete the assignment. (D)
D = false;

% 5. I should use the workspace window, not the command window, to ensure 
% that my variables have the correct values. (E)
E = true;

% 6. After I submit my assignment I should always check to see if Canvas
% displays "Turned in!" to be sure I submitted my assignment correctly. (F)
F = true;

% 7. If I have a bad homework grade, I should automatically e-mail the HW 
% STA and ask him or her to change it. (G)
G = false;

% 8. After a homework assignment is graded, I have 1 week to appeal my 
% grade to my TA. If they do not respond, I have an additional week to 
% contact the HW STA. (H)
H = true;

% 9. I should e-mail my code to my TA to submit it. (I)
I = false;

% 10. If I am confused by the directions on a homework assignment, I should
% just make a guess on what the homework wants me to do. (J)
J = false;

% 11. I don't expect to always get feedback before the Resubmission due
% date. Getting feedback is just a privilege, not a guarantee. (K)
K = true;

% 12. I am required to turn in something for the second submission. (L)
L = false;

%% Part 2: Common Functions

% Use the correct built-in function based on the description below. 
% The variables a, b, and c contain random numbers. 

% 13. The variable a contains a decimal number. Round this number using
% standard conventions, i.e. anything less than .5 rounds down, while
% anything over rounds up. (M)
M = round(a);

% 14. Round the number contained in the variable a down to the next
% closest integer. (N)
N = floor(a);

% 15. Now round the number contained in the variable a up the next 
% closest integer. (O)
O = ceil(a);

% 16. Take the absolute value of the number in variable b. (P)
P = abs(b);

% 17. Take the cosine value of the number in variable b (in radians). (Q)
Q = cos(b);

% 18. Take the sine value of the number in variable c (in degrees). (R)
R = sind(c);

% 19. Take the modulus after division of the numbers contained in variables
% b and c, in that order. (S)
S = mod(b, c);

end