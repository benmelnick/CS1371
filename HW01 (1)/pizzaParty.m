function[slices, left] = pizzaParty(people, pizzas)

%8 slices per pizza
slices = floor((pizzas * 8) / people);
left = mod((pizzas * 8), people);

end