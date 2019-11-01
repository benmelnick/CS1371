function [final] = beMyHero(movies, friend, netflix, stats)

% Your function will have the following three inputs in the following order and format:
%                        '<movieOption1>,<movieOption2>'
%     '<friendsMovie1>,<friendsMovie2>,<friendsMovie3>,...,<friendsMovieN>'
%             '<Netflix1>,<Netflix2>,<Netflix3>,<Netflix4>,<Netflix5>'
% The fourth input of your function will be a 5x2 array of stats, with each 
%       row corresponding to a specific movie and the columns corresponding to 
%       either total revenue that year and or the rating, in the following format:
%           total revenue rating
%  stats = [ 1500000        4.3;  <- Netflix1
%            75000          3.7;  <- Netflix2
%            45000          4.9;  <- Netflix3
%            780000         2.7;  <- Netflix4
%            4000           1.5 ] <- Netflix5

% You decide on the following set of rules:
% 1. If movie option 1 is in both lists, play movie option 1.
% 2. If movie option 1 is in only the Netflix list, but not the friends list:
%       a. And if movie option 1 has a Netflix rating greater than the average 
%             rating of the top 5 movies, play movie option 1.
%       b. If not, play the top rated movie in the Netflix list.
% 3. If movie option 1 is in only the friends list, but not in the Netflix list:
%       a. And if movie option 2 is in the both lists, play movie option 2
%       b. Otherwise, play movie option 1
% 4. If movie option 1 is in neither list:
%       a. And movie option 2 is in either list, play movie option 2
%       b. Otherwise, play the top rated movie in the Netflix list.
% Your function should output a string in the following format:
%        'Based on condition <num>, <movieName> would be a great choice!'
% The  <num>  is a number, 1-4, depending on the conditions specified in the rules above .

[movie1, rem] = strtok(movies, ',');
movie2 = strtok(rem, ',');
netflixAvg = mean(stats(:,2));

%get individual netflix movies, then compare to movie1 - used for condition
%2
[flix1, rem] = strtok(netflix, ',');
[flix2, rem] = strtok(rem, ',');
[flix3, rem] = strtok(rem, ',');
[flix4, rem] = strtok(rem, ',');
flix5 = strtok(rem, ',');

%used for condition 2
switch movie1 %statsIndx is used to indx the row in the stats array to retrieve the movie rating
    case {flix1}
        statsIndx = 1; %statsIndx gives the row that movie1 is found in
    case {flix2}
        statsIndx = 2;
    case {flix3}
        statsIndx = 3;
    case {flix4}
        statsIndx = 4;
    case {flix5}
        statsIndx = 5;
end

if strfind(friend, movie1) > 0 & strfind(netflix, movie1) > 0 %finds iteration of the movie in both strings
    condition = 1;
    final = sprintf('Based on condition %d, %s would be a great choice!', condition, movie1);
elseif ~contains(friend, movie1) & strfind(netflix, movie1) > 0 %movie is only in netflix list
    condition = 2;
    if stats(statsIndx,2) > netflixAvg
        final = sprintf('Based on condition %d, %s would be a great choice!',condition,movie1);
    else
        [maxRating, indx] = max(stats(:,2)); %movie with the best rating
        final = sprintf('Based on condition %d, %s would be a great choice!',condition,findMovie(indx,netflix));
    end
elseif ~contains(netflix, movie1) & strfind(friend, movie1) > 0 %movie1 is only in friends list
    condition = 3;
    if strfind(friend,movie2) > 0 & strfind(netflix,movie2) > 0 %movie2 in both lists
        final = sprintf('Based on condition %d, %s would be a great choice!', condition,movie2);
    else
        final = sprintf('Based on condition %d, %s would be a great choice!', condition, movie1);
    end
elseif ~contains(netflix, movie1) & ~contains(friend, movie1)
    condition = 4;
    if contains(netflix, movie2) | contains(friend, movie2) %movie2 is in either list
        final = sprintf('Based on condition %d, %s would be a great choice!', condition, movie2);
    else
        [maxRating, indx] = max(stats(:,2)); %movie with the best rating
        final = sprintf('Based on condition %d, %s would be a great choice!',condition,findMovie(indx, netflix));
    end     
end

end

function [movie] = findMovie(indx, netflix)

[flix1, rem] = strtok(netflix, ',');
[flix2, rem] = strtok(rem, ',');
[flix3, rem] = strtok(rem, ',');
[flix4, rem] = strtok(rem, ',');
flix5 = strtok(rem, ',');

switch indx
    case {1}
        movie = flix1;
    case {2}
        movie = flix2;
    case {3}
        movie = flix3;
    case {4}
        movie = flix4;
    case {5}
        movie = flix5;
end

end