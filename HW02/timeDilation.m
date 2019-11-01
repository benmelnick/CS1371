function [timeObs] = timeDilation(time3, vel)

c = 299792458;
velTerm = (vel / c)^2;
newVelTerm = (1 - velTerm)^(1/2);
timeObs = round(time3 / newVelTerm, 4);

end