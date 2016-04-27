%% This function takes a matrix as input and converts the letters in it to
% numbers
function res = to_num(C)
%In vector alphabet, similar letters grouped, a=1, e=2, etc.
alphabet = ['a','e','i','o','u','y','w','v','b','p','q','k','g','c','s',...
            'z','x','t','d','l','r','f','h','j','m','n',' ',':',';',',',...
            '.','!','?','0','1','2','3','4','5','6','7','8','9'];
%Create an empty matrix the size of C to populate
res = zeros(size(C));
%Individually convert every element of matrix to number
    for i = 1:length(C)
        char = C(i);
        res(i) = 0;
        for j = 1:length(alphabet)
            if strcmpi(char,alphabet(j))
                res(i) = j;
            end
        end
    end
%Result is a matrix of numbers
end
% alphabet = ['A','a','E','e','I','i','O','o','U','u','Y','y','W','w','V',...
%             'v','B','b','P','p','Q','q','K','k','G','g','C','c','S','s',...
%             'Z','z','X','x','T','t','D','d','L','l','R','r','F','f','H',...
%             'h','J','j','M','m','N','n',' ',':',';',',','.','!','?','0',...
%             '1','2','3','4','5','6','7','8','9'];