function [out] = caesarShift(str,shift)
% 1. Convert all letters to uppercase, since classical Latin had one case.
% 2. For letters with even ASCII values, perform a Caesar shift using the given shift number.
% 3. For letters with odd ASCII values, perform a Caesar shift using the negative of the shift
% number.
% 4. Replace all instances of  'J' with  'I' and  'U' with  'V' , since classical Latin had no J's
% or U's (Julius Caesar was written as IVLIVS CAESAR).
% 5. Concatenate the number of consonants in the resulting string with the output string,
% including the  'V' s added in Step 4.

str = lower(str);
vals = double(str) - 96;
out = [];
count = 0;
for i = 1 : length(vals)
    val = vals(i);
    if val ~= -64
        if mod(val,2) == 0
            val = mod((val + shift),26);
        else    
            val = mod((val - shift),26);
        end
    end
    val = val + 96;
    if val == 106
        val = 104;
    elseif val == 117
        val = 118;
    end
    
    if val ~= 97 && val ~= 101 && val ~= 105 && val ~= 111 && val ~= 117 && val ~= 32
        count = count + 1;
    end
    out = [out val];
end
out = upper(char(out));
out = [out num2str(count)];
end