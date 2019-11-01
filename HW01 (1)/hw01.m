%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Benjamin Melnick
% GT Email     : bmelnick3@gatech.edu
% Homework     : HW 1
% Course       : CS1371
% Section      : B03
% Collaboration:
%                 I worked on the homework assignment alone, using
%                  only course materials. 
%
% Files to submit:
%	ABCs_functions.m
%	ABCs_homeworkOverview.m
%	cookieCutter.m
%	hw01.m
%	lemonade.m
%	orangePeel.m
%	pizzaParty.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on Canvas. Check the Canvas announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to Canvas:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are m-files called "ABCs_homeworkOverview.m" and "ABCs_functions.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_homeworkOverview.m
%	ABCs_functions.m
%
% ABCs File Testing:
%	ABCs_hw01_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW01_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Basics
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: lemonade
%
% Test Cases:
% [gallons1, pints1, cups1] = lemonade(4)
% 	gallons1 =>      1
% 	pints1 =>      8
% 	cups1 =>     16
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [gallons2, pints2, cups2] = lemonade(9)
% 	gallons2 =>                       2.25
% 	pints2 =>     18
% 	cups2 =>     36
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [gallons3, pints3, cups3] = lemonade(2.2)
% 	gallons3 =>                       0.55
% 	pints3 =>                        4.4
% 	cups3 =>                        8.8
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: cookieCutter
%
% Test Cases:
% [sides1] = cookieCutter(60)
% 	sides1 =>      3
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [sides2] = cookieCutter(90)
% 	sides2 =>      4
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [sides3] = cookieCutter(120)
% 	sides3 =>      6
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: pizzaParty
%
% Test Cases:
% [slices1, left1] = pizzaParty(15, 3)
% 	slices1 =>      1
% 	left1 =>      9
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [slices2, left2] = pizzaParty(100, 25)
% 	slices2 =>      2
% 	left2 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [slices3, left3] = pizzaParty(1, 1)
% 	slices3 =>      8
% 	left3 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: orangePeel
%
% Test Cases:
% [sa1] = orangePeel(105)
% 	sa1 =>                     107.63
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [sa2] = orangePeel(260)
% 	sa2 =>    197
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [sa3] = orangePeel(500)
% 	sa3 =>                     304.65
% 		Output variable(s) should be identical to that produced by the solution file
%
