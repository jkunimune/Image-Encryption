function res = to_char(N)
%alphabet = ['A','a','E','e','I','i','O','o','U','u','Y','y','W','w','V',...
%            'v','B','b','P','p','Q','q','K','k','G','g','C','c','S','s',...
%            'Z','z','X','x','T','t','D','d','L','l','R','r','F','f','H',...
%            'h','J','j','M','m','N','n',' ',':',';',',','.','!','?','0',...
%            '1','2','3','4','5','6','7','8','9'];
alphabet = ['a','e','i','o','u','y','w','v','b','p','q','k','g','c','s',...
            'z','x','t','d','l','r','f','h','j','m','n',' ',':',';',',',...
            '.','!','?','0','1','2','3','4','5','6','7','8','9'];
N = round(N);
res = zeros(size(N));
for i = 1:length(N)
    num = N(i);
    if (num > length(alphabet)) || (num < 1)
        res(i) = '~';
    else
        res(i) = alphabet(num);
    end
end
res = char(res);
end