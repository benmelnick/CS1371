%Skeleton function

function play2048

%Establish figure: You should remove the menu and toolbar, turn off the
%the number title, and set the title the figure 2048

%Display the title, the score, and create the tiles in the figure

% Create a quit button (it can use the callback function quitGame provided
% below)

%Initialize an array to keep track of your values as the game is played 

%Update the display to show the beginning board with the new tiles

score = 0
play = true;
while play
    %Pause the program to wait for a user input
    
    %Determine the user input, and call the boardSlider with the
    %appropriate direction

    %Update the tiles in the figure based on the array
    
    %You should only generate a new tile if the array changed when passed
    %through boardSlider with the given direction
    
    %Check to see if Game Over
        %the game is over if there are no empty spots on the board and
        %there are no avaliable moves to be made (no adjacent tiles are
        %equal
        %
        %If game is over, how do you terminate the program/game?
        %
        %Display game over screen and update leaderboard
    
end
end

function quitGame(??,??) % fill in the two inputs for a callback function

    % does anything extra you would like to put in
    
    % closes the figure


end



