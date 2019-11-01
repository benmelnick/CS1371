function [depth] = shallots(ca)

%Given a singular nested cell as your input, write a function that counts how 
%     many times the element is nested, or how many ?layers? the cell has.

count = 0;
while strcmp(class(ca),'cell') %iscell(ca)
    ca = ca{1}; %removes one layer
        %ex: ca = {{{'hello'}}} --> ca = ca{1} --> ca = {{'hello'}}
    count = count + 1;
end

depth = count;

end