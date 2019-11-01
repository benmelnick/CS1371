function [fast] = luge(lugers)

% Given an input character vector that contains a list of lugers and their times, 
%     iterate to find the luger with the fastest time. 
%     All inputs will be in the following format:
%             '<name1>-<time1>-<name2>-<time2>-...-<nameZ>-<timeZ>'
% Each name is paired with a time (in seconds). All entries are separated by hyphens. 
%     Once you find the luger with the fastest time, output a character vector in 
%     the following format:
%   '<fastestName> is the winner of the 2018 Olympics for luge, with a time of
%                                <time> seconds!'

%go through list, separate first name and time in lugers, set time and name
%to max, then compare to existing max

minName = '';
minTime = 10000000000;
while contains(lugers, '-') %as long as there is a hyphen in the list

[name, rem] = strtok(lugers, '-');
[time, lugers] = strtok(rem, '-'); %reset the remaining piece after names and times have been removed to lugers

doubleTime = str2num(time);

    if doubleTime < minTime
        minName = name;
        minTime = doubleTime;
    end

end

fast = sprintf('%s is the winner of the 2018 Olympics for luge, with a time of %0.2f seconds!',minName, minTime);

end