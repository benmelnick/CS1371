function [fruits] = rottenFruit(age)

%If the fruit is older than seven days, it is rotten and must be thrown away. 
%If the fruit is less than two days old, it isn?t ripe enough to eat, thus making it inedible. 
%In other words, the edible days should be between 2 and 7, inclusive.

edible = age > 7 | age < 2; %returns true where ages not in between 2 and 7
age(edible) = []; %puts blanks at places where ages not in between 2 and 7
fruits = length(age);

end