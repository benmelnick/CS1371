clear

angle1 = 60;
angle2 = 90;
angle3 = 120;

[sides1] = cookieCutter(angle1);
[sides2] = cookieCutter(angle2);
[sides3] = cookieCutter(angle3);

[sides1_soln] = cookieCutter_soln(angle1);
[sides2_soln] = cookieCutter_soln(angle2);
[sides3_soln] = cookieCutter_soln(angle3);

check_sides1 = isequal(sides1, sides1_soln);
check_sides2 = isequal(sides2, sides2_soln);
check_sides3 = isequal(sides3, sides3_soln);