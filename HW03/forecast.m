function [out] = forecast(currentForecast, wordToReplace, newWord)

k = strfind(currentForecast, wordToReplace);
first = currentForecast(1 : k - 1);
last = currentForecast(k + length(wordToReplace) : end);
out = [first newWord last];

end