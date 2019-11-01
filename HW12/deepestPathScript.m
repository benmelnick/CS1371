[out1] = deepestPath({{'tree'},{'tree',{{'tree'}}},'tree',{'tree','tree','tree'}});
[out1_soln] = deepestPath_soln({{'tree'},{'tree',{{'tree'}}},'tree',{'tree','tree','tree'}});

% 	out1 => The deepest path is 4 cells deep.
% 
[out2] = deepestPath({'tree',{'tree',{'tree',{'tree',{'tree',{'tree'}}}}}});
[out2_soln] = deepestPath_soln({'tree',{'tree',{'tree',{'tree',{'tree',{'tree'}}}}}});

% 	out2 => The deepest path is 6 cells deep.
% 
[out3] = deepestPath({{'tree',{{'tree','tree',{{{'tree'}},{{{'tree'}},'tree'}},'tree'}},'tree'},'tree'});
[out3_soln] = deepestPath_soln({{'tree',{{'tree','tree',{{{'tree'}},{{{'tree'}},'tree'}},'tree'}},'tree'},'tree'});

% 	out3 => The deepest path is 8 cells deep.

match1 = isequal(out1,out1_soln);
match2 = isequal(out2,out2_soln);
match3 = isequal(out3,out3_soln);


