function [out] = myFunc(in)

if ~iscell(in{1})
    out = in{1};
else
    out = myFunc(in{1});
end

end