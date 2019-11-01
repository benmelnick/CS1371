[newTom1] = tomAndJerry(tom1, new1, toRemove1);
[newTom1_soln] = tomAndJerry_soln(tom1, new1, toRemove1);

[newTom2] = tomAndJerry(tom2, new2, toRemove2);
[newTom2_soln] = tomAndJerry_soln(tom2, new2, toRemove2);


[newTom3] = tomAndJerry(tom3, new3, toRemove3);
[newTom3_soln] = tomAndJerry_soln(tom3, new3, toRemove3);

match1 = isequal(newTom1, newTom1_soln);
match2 = isequal(newTom2, newTom2_soln);
match3 = isequal(newTom3, newTom3_soln);




