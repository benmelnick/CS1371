function [game] = incredibleUno(name, color, value, handColors, handVals)

% Given the color and number of the card on top of the discard, 
%     write a function that finds the best way to get rid of the most 
%     cards in your player?s hand and outputs the move.
% Here are the rules of this Uno game:
% ? The next played card must match the top card's color or number.
% ? Multiple cards can be played if and only if they have the same 
%     number as the top card.
% ? Draw from the pile if nothing can be played. When  ' Frozone' 
%     can't play, he will forfeit the game and get up to leave, saying  
%     'Where?s my super suit?!'

maskVal = handVals == value; %logical vector - true where there is top value
maskCol = handColors == color;

colors = handColors(maskCol); %vector of the colors in hand that match top color
vals = handVals(maskVal); 

if length(vals) > 1 %player has multiple cards matching the top number
    game = sprintf('%s played %d #%d cards.', name, length(vals), vals(1));
elseif length(vals) == 1 %number is always prioritized, if at least one card matches then it should be played
    game = sprintf('%s played 1 #%d card.', name, vals(1));
elseif length(vals) == 0 && length(colors) > 0 %colored card needs to be played
    switch color
        case {'r'}
            game = sprintf('%s played 1 red card',name);
        case {'b'}
            game = sprintf('%s played 1 blue card',name);
        case {'y'}
            game = sprintf('%s played yellow red card',name);
        case {'g'}
            game = sprintf('%s played green red card',name);
    end
elseif length(vals) == 0 && length(colors) == 0 %have to draw a card
    switch name
        case {'Frozone'}
            game = 'Where''s my super suit?!';
        otherwise
            game = sprintf('%s had to draw a card...', name);
    end
end

end