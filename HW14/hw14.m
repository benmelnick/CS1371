%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <your name>
% GT Email     : <your GT email address>
% Homework     : <homework assignment number/original or resubmission>
% Course       : CS1371
% Section      : <Your Section>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
% Files to submit:
%	ABCs_graphTheory.m
%	ABCs_sorting.m
%	chessy.m
%	edgy.m
%	functiony.m
%	hw14.m
%	shapey.m
%	waldoy.m
%	wordy.m
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
% Part of this homework are m-files called "ABCs_sorting.m" and "ABCs_graphTheory.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_sorting.m
%	ABCs_graphTheory.m
%
% ABCs File Testing:
%	ABCs_hw14_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW14_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Review
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
%% Function Name: functiony
%
% Test Cases:
% [valid1] = functiony('function [out] = name(in1,in2)')
% 	valid1 =>    1
% 
% [valid2] = functiony('Function myFunction')
% 	valid2 =>    0
% 
% [valid3] = functiony('function [] = myFunc()')
% 	valid3 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: edgy
%
% Test Cases:
% edgy('cheezit.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% edgy('tim.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% edgy('yobo.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% edgy('sl_cat.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: shapey
%
% Setup:
%	load shapey_test.mat
%
% Test Cases:
% shapey(lengths1, angles1)
% 		Output plot(s) should be identical to that produced by solution file
% 
% shapey(lengths2, angles2)
% 		Output plot(s) should be identical to that produced by solution file
% 
% shapey(lengths3, angles3)
% 		Output plot(s) should be identical to that produced by solution file
% 
% shapey(lengths4, angles4)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: chessy
%
% Setup:
%	load chessy_student.mat
%
% Test Cases:
% [board1, desc1] = chessy(board, game1)
% 	board1 =>  
% rnbq bnr
% ppppkpp 
%        p
%     p   
%  P      
% B    N  
% P PPPPPP
% RN QKB R
% 	desc1 => Pieces taken by white: none :(. Pieces taken by black: none :(.
% 
% [board2, desc2] = chessy(board, game2)
% 	board2 =>  
% r b kbnr
% pppp Npp
%         
%         
%     q   
%      n  
% PPPPBP P
% RNBQKR  
% 	desc2 => Pieces taken by white: pp. Pieces taken by black: PP.
% 
% [board3, desc3] = chessy(board, game3)
% 	board3 =>  
% r  q rk 
%  bp  ppQ
% p       
%  pbNp N 
%    n    
%  B P    
% PPP  PPP
% R B  RK 
% 	desc3 => Pieces taken by white: pnp. Pieces taken by black: P.
%
%--------------------------------------------------------------------------------
%% Function Name: wordy
%
% Test Cases:
% [out1] = wordy(0)
% 	out1 => zero
% 
% [out1] = wordy(5)
% 	out1 => five
% 
% [out1] = wordy(-100)
% 	out1 => negative one hundred
% 
% [out1] = wordy(428)
% 	out1 => four hundred and twenty-eight
%
%--------------------------------------------------------------------------------
%% Function Name: waldoy
%
% Setup:
%	load WaldoTestCases.mat
%
% Test Cases:
% [exists1, depth1] = waldoy(waldo1)
% 	exists1 =>    0
% 	depth1 =>      0
% 
% [exists2, depth2] = waldoy(waldo2)
% 	exists2 =>    1
% 	depth2 =>      0
% 
% [exists3, depth3] = waldoy(waldo3)
% 	exists3 =>    1
% 	depth3 =>      1
%
