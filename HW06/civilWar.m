function [winner] = civilWar(move1, move2)

% Write a function that takes in and compares two of the following strings. 
%                               'Captain America'
%                                 'Black Widow'
%                                   'Hawkeye'
%                                'Black Panther'
%                                   'Iron Man'
% Then compare them by the following rules (look on the following page for a graphic):
% 1. Black Panther beats both Captain America and Hawkeye.
% 2. Captain America beats both Iron Man and Black Widow.
% 3. Iron Man beats both Black Panther and Hawkeye.
% 4. Hawkeye beats both Captain America and Black Widow.
% 5. Black Widow beats both Black Panther and Iron Man.

switch move1
    case {'Black Panther'}
        switch move2
            case {'Captain America'}
                winner = 'Player 1 wins!';
            case {'Iron Man'}
                winner = 'Player 2 wins!';
            case {'Hawkeye'}
                winner = 'Player 1 wins!';
            case {'Black Widow'}
                winner = 'Player 2 wins!';
            case {'Black Panther'}
                winner = 'It''s a tie!';
        end
    case {'Captain America'}
        switch move2
            case {'Black Panther'}
                winner = 'Player 2 wins!';
            case {'Iron Man'}
                winner = 'Player 1 wins!';
            case {'Hawkeye'}
                winner = 'Player 2 wins!';
            case {'Black Widow'}
                winner = 'Player 1 wins!';
            case {'Captain America'}
                winner = 'It''s a tie!';
        end
    case {'Iron Man'}
        switch move2
            case {'Captain America'}
                winner = 'Player 2 wins!';
            case {'Black Panther'}
                winner = 'Player 1 wins!';
            case {'Hawkeye'}
                winner = 'Player 1 wins!';
            case {'Black Widow'}
                winner = 'Player 2 wins!';
            case {'Iron Man'}
                winner = 'It''s a tie!';
        end
    case {'Hawkeye'}
        switch move2
            case {'Captain America'}
                winner = 'Player 1 wins!';
            case {'Iron Man'}
                winner = 'Player 2 wins!';
            case {'Black Panther'}
                winner = 'Player 2 wins!';
            case {'Black Widow'}
                winner = 'Player 1 wins!';
            case {'Hawkeye'}
                winner = 'It''s a tie!';
        end
    case {'Black Widow'}
        switch move2
            case {'Captain America'}
                winner = 'Player 2 wins!';
            case {'Iron Man'}
                winner = 'Player 1 wins!';
            case {'Hawkeye'}
                winner = 'Player 2 wins!';
            case {'Black Panther'}
                winner = 'Player 1 wins!';
            case {'Black Widow'}
                winner = 'It''s a tie!';
        end

end

end