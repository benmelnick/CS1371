% Test Cases:
[str1] = schrodingersCat(arr1, start1);
[str1_soln] = schrodingersCat_soln(arr1, start1);

% 	str1 => The dead cat was found at position (1,2) after 6 steps.
% 
[str2] = schrodingersCat(arr2, start2);
[str2_soln] = schrodingersCat_soln(arr2, start2);

% 	str2 => The dead cat was found at position (4,11) after 69 steps.
% 
[str3] = schrodingersCat(arr3, start3);
[str3_soln] = schrodingersCat_soln(arr3, start3);

% 	str3 => The dead cat was found at position (14,2) after 295 steps.

match1 = isequal(str1,str1_soln);
match2 = isequal(str2,str2_soln);
match3 = isequal(str3,str3_soln);