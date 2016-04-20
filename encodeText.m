% Encode a string into a vector of numbers 0 through 26
function encodedText = encodeText(imageOutput)
%% Take in and get size of image matrix
encryptionMatrix = imageOutput;
[m,n] = size(encryptionMatrix);            %Gets size of encryption matrix
%% If image not square, stop. Else continue w/ encryption
if m==n
% Request message, store as string, convert to ASCII numbers
prompt = 'Input text to be encoded: ';
originalMessage = input(prompt,'s');  
toNumbers = double(originalMessage)-96;   
% Fix message into a matrix that fits the encryption matrix, then encrpyt
encodingMatrix = vec2mat(toNumbers,m);
encodedTextMatrix = encodingMatrix * encryptionMatrix;
encodedText = encodedTextMatrix;
else
%If not square, return error message.
encodedText = 'Error: Image must be square';
end
%% For decoding later
%toText = char(toNumbers+96);               %Takes vector, converts to text
end