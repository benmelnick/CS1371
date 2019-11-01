% Test Cases:
[out1] = fruitEncryption(arr1)
[out1_soln] = fruitEncryption_soln(arr1);

% 	out1 =>  
% qgvlrx
% yakaka
% fmyaka
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out2] = fruitEncryption(arr2)
[out2_soln] = fruitEncryption_soln(arr2);

% 	out1 =>  
% ewejmxkkpv
% zroinsuryf
% sbcyybkysn
% nhcscsucim
% qordelsexr
% iwaryanahd
% 		Output variable(s) should be identical to that produced by the solution file
% 
[out3] = fruitEncryption(arr3)
[out3_soln] = fruitEncryption_soln(arr3);

% 	out1 =>  
% kpm
% rhp
% kzw
% aok
% wij
% jii
% son
% gxd
% dvt
% xum
% xtp
% 		Output variable(s) should be identical to that produced by the solution file

match1 = isequal(out1, out1_soln);
match2 = isequal(out2, out2_soln);
match3 = isequal(out3, out3_soln);