function [stats] = weatherStats(temps, weather)

high = round(max(temps));
avg = round(mean(temps));
strHigh = sprintf('%d',high); %formatting low and high temps into strings
strAvg = sprintf('%d',avg);
weatherNew = lower(weather); %turn weather into lowercase string

stats = sprintf('Today''s weather was %s, with a high temperature of %s degrees and an average temperature of %s degrees.',weatherNew, strHigh, strAvg);

end