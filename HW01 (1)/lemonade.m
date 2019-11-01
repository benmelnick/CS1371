function [gallons, pints, cups] = lemonade(quarts)
    gallons = quarts / 4;
    pints = quarts * 2;
    cups = pints * 2;

    round(gallons, 2);
    round(pints, 2);
    round(cups, 2);
end
