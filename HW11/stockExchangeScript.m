[out1] = stockExchange(stocks1);
[out1_soln] = stockExchange_soln(stocks1);

[out2] = stockExchange(stocks2);
[out2_soln] = stockExchange_soln(stocks2);

[out3] = stockExchange(stocks3);
[out3_soln] = stockExchange_soln(stocks3);

match1 = isequal(out1,out1_soln);
match2 = isequal(out2,out2_soln);
match3 = isequal(out3,out3_soln);