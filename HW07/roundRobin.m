function [outcome] = roundRobin(scores)

% Round robin is a tournament format where each team plays a game against every other 
%     team in the bracket. 
%     Given a character array of the games results, write a function called roundRobin() 
%     that outputs a character vector describing the winner of the round robin. 
%     Each row in the character array represents one game, formatted in the following way:
%                               '00 ABC - DEF 00'
% 'ABC' and ' DEF' are the teams with their three-letter IOC country codes. Before each 
%     three-letter code are the goals scored by the team (always displayed as two digits).
%     The team that wins the most games is the winner of the round robin. The output 
%     should be formatted:
%           'Team <ABC> won the round robin with a record of <W>-<L>.'
% where  <ABC>  is replaced by the IOC country code,  <W>  are wins, and  <L>  are losses.

[r,c] = size(scores);

teams = '';
wins = [];
losses = [];

for i = 1 : r
    scoreLine = scores(i,:);
    [team1Info, rem] = strtok(scoreLine, '-');
    team2Info = strtok(rem, '-');
    team1Info = team1Info(1:end-1); %remove the space at end
    team2Info = team2Info(2:end); %remove space at beginning
    
    [score1,rem1] = strtok(team1Info, ' ');
    team1 = strtok(rem1, ' ');
    score1 = str2num(score1);

    [team2,rem2] = strtok(team2Info, ' ');
    score2 = str2num(strtok(rem2, ' '));

    if ~contains(teams,team1) %if team is not currently in the list of teams
        teams = [teams team1]; %added team to lists
        wins = [wins 0];
        losses = [losses 0];
        index = length(wins); %use length to access very last element
        if score1 > score2
            wins(index) = wins(index) + 1; %team1 wins
        elseif score2 > score1
            losses(index) = losses(index) + 1;
        end
    else
        %team is already in list - use find function to find position of
        %team in the list, then index wins and losses for that team
        k = strfind(teams, team1);
        index = ceil(k / 3); %divide by 3 to find which number team this is - every team name has three characters, divide by 3 to find number of team in list
        if score1 > score2
            wins(index) = wins(index) + 1; %team1 wins
        elseif score2 > score1
            losses(index) = losses(index) + 1;
        end
    end

    %repeat for team2
    if ~contains(teams,team2) %if team is not currently in the list of teams
        teams = [teams team2]; %added team to lists
        wins = [wins 0];
        losses = [losses 0];
        index = length(wins); %use length to access very last element
        if score2 > score1
            wins(index) = wins(index) + 1; %team1 wins
        elseif score1 > score2
            losses(index) = losses(index) + 1;
        end
    else
        %team is already in list - use find function to find position of
        %team in the list, then index wins and losses for that team
        k = strfind(teams, team2);
        index = ceil(k / 3); %divide by 3 to find which number team this is - every team name has three characters, divide by 3 to find number of team in list
        if score2 > score1
            wins(index) = wins(index) + 1; %team1 wins
        elseif score1 > score2
            losses(index) = losses(index) + 1;
        end
    end
end

%to calculate winner, award 3 points for a win - team with most points is
%the winner
[maxWins,indx] = max(wins);

w = wins(indx);
l = losses(indx);
team = teams(indx * 3 - 2: indx * 3); %multiply by three to get to start of team name

outcome = sprintf('Team %s won the round robin with a record of %d-%d.',team,w,l);

end