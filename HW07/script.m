num1 = 9;

% i = 1;                      % Start from 1
% B = 0;                      % Initializes a counting variable
% while i <= num1                    % When i is less than or equal to num1
%     if mod(sqrt(i),2)==0  % Checks to see if sqrt(i) is an integer root
%         B = B + 1;              % Increment the counter if an integer is found
%     end
%     i = i + 1;                  % Moves to the next index position
% end
% 
vec = [2, 10, -8, 2, 0, 0, 5];
idx = 1;
vec2 = [];
    prev = NaN;
    curr = vec(idx);
    tot = 0;
    while prev ~= curr
        idx = idx + 1;
       prev = curr;
       curr = vec(idx);
       if prev < curr
           tot = tot + curr;
           vec2 = [vec2 tot];
       end
    end