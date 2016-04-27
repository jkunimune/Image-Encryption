%% This function takes a matrix as input, converts the numbers in it to
% letters, then converts the matrix back into a string row by row
function res = to_char(N)
%In vector alphabet, similar letters grouped, a=1, e=2, etc.
alphabet = ['a','e','i','o','u','y','w','v','b','p','q','k','g','c','s',...
            'z','x','t','d','l','r','f','h','j','m','n',' ',':',';',',',...
            '.','!','?','0','1','2','3','4','5','6','7','8','9'];
%Account for non-int values by rounding every element in N to nearest int
N = round(N);
%Create an empty matrix the size of N to populate
res = zeros(size(N));
%Individually convert every element of matrix to character
for i = 1:length(N)
num = N(i);
%If int outside bounds of alphabet, return ~
    if (num > length(alphabet)) || (num < 1)
        res(i) = '~';
%Otherwise return proper letter
    else
        res(i) = alphabet(num);
    end
end
%Result is a string of letters
res = char(res);
end
%alphabet = ['A','a','E','e','I','i','O','o','U','u','Y','y','W','w','V',...
%            'v','B','b','P','p','Q','q','K','k','G','g','C','c','S','s',...
%            'Z','z','X','x','T','t','D','d','L','l','R','r','F','f','H',...
%            'h','J','j','M','m','N','n',' ',':',';',',','.','!','?','0',...
%            '1','2','3','4','5','6','7','8','9'];