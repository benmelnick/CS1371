function [years] = spaceTime(yearsEarth, axis, mass)

G = 6.674e-11;
massSun = 1.989e30;

topTerm = axis^3;
bottomTerm = G* (mass + massSun);

periodP = 2 * pi * (topTerm / bottomTerm)^(1/2);
periodEarth = 31536000; %seconds in one year on earth

ratio = periodP / periodEarth; %seconds/yearP / seconds/yearE --> yearE/yearP

years = round((yearsEarth / ratio), 3);

end