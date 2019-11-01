clear 

%note: semicolons prevents results from showing up in the command window

quarts1 = 4;
quarts2 = 9;
quarts3 = 2.2;

[gallons1, pints1, cups1] = lemonade(quarts1);
[gallons2, pints2, cups2] = lemonade(quarts2);
[gallons3, pints3, cups3] = lemonade(quarts3);

[gallons1_soln, pints1_soln, cups1_soln] = lemonade_soln(quarts1);
[gallons2_soln, pints2_soln, cups2_soln] = lemonade_soln(quarts2);
[gallons3_soln, pints3_soln, cups3_soln] = lemonade_soln(quarts3);

check_gallons1 = isequal(gallons1, gallons1_soln);
check_pints1 = isequal(pints1, pints1_soln);
check_cups1 = isequal(cups1, cups1_soln);

check_gallons2 = isequal(gallons2, gallons2_soln);
check_pints2 = isequal(pints2, pints2_soln);
check_cups2 = isequal(cups2, cups2_soln);

check_gallons3 = isequal(gallons3, gallons3_soln);
check_pints3 = isequal(pints3, pints3_soln);
check_cups3 = isequal(cups3, cups3_soln);