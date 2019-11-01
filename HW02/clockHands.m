function [newHour, newMin] = clockHands(curHour, curMin, mins)

totalMins = (curHour * 60) + curMin;
newTotalMins = totalMins + mins;
netMins = mod(newTotalMins, (12 * 60)); %accounts for times after midnight/noon
%if newTotalMins < 12 * 60, netMins = newTotalMins
%if newTotalMins < 0, netMins will return difference between newTotalMins and 720
newHour = floor(netMins / 60);
newMin = mod(netMins, 60);

end