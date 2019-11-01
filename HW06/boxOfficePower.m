function [earnings] = boxOfficePower(actors)

% For your superhero movie to be successful, it needs actors with 
%     lots of box office draw. 
% Each actor has the potential to bring in a certain sized fanbase based 
%     on their appeal. 
% You decide to write a MATLAB function that takes in a list of THREE 
%     potential actors and calculates your movie?s gross earnings 
%     (in millions) based on its cast. 
% The list of actors will be a character vector separated by commas.

[actor1, rem] = strtok(actors, ',');
[actor2, rem] = strtok(rem, ',');
actor3 = strtok(rem, ',');

val1 = calcValue(actor1);
val2 = calcValue(actor2);
val3 = calcValue(actor3);

earnings = val1 + val2 + val3;

end

function [value] = calcValue(name)

switch name
    case {'Gal Gadot'}
        value = 1900;
    case {'Robert Downey Jr.'}
        value = 800;
    case {'Chadwick Boseman'}
        value = 400;
    case {'Chris Hemsworth'}
        value = 350;
    case {'Scarlett Johansson'}
        value = 300;
    case {'Jeremy Renner'}
        value = 150;
    case {'Brandon Routh'}
        value = 50;
    case {'Ryan Reynolds'}
        value = 0;
    case {'Nicolas Cage'}
        value = -200;
end

end