% The purpose of this function is to see if the encryption and decryption
% portions of the Linearity 1 final project work. imageOutput is a square
% matrix produced through MATLAB intrepreting an image as a matrix that
% will then be used to encrypt a message. 

function res = CombinedEncryptDecrypt(imageOutput)
%% First run the encoding/encryption process
encodedText = encodeTextSwitch(imageOutput);
disp(encodedText);
% Then decode what has been given and make sure it matches the original
res = decodeTextCopy(encodedText,imageOutput);
%% Here are the functions
function encodedText = encodeTextSwitch(imageOutput)
% Take in and get size of image matrix
encryptionMatrix = double(imageOutput);
[m,n] = size(encryptionMatrix);            %Gets size of encryption matrix
% If image not square, stop. Else continue w/ encryption
    if m == n
% Request message, store as string, convert to ASCII numbers
        prompt = 'Input text to be encoded: ';
        originalMessage = input(prompt,'s');  
        toNumbers = (originalMessage)-96;   
% Fix message into a matrix that fits the encryption matrix, then encrpyt
        encodingMatrix = double(vec2mat(toNumbers,m,32));
        transEncodingMatrix = double(transpose(encodingMatrix));
        encodedTextMatrix = double(encryptionMatrix * transEncodingMatrix);      
        encodedText = encodedTextMatrix;
    else
%If not square, return error message.
        encodedText = 'Error: Image must be square';
    end
end

function decodedText = decodeTextCopy(encodedText,imageOutput)
% Take in stuff
encryptionMatrix  = imageOutput;
% Apply encryption matrix as inverse to encoded text to decode.
transDecodedNumbers = encryptionMatrix^-1 * encodedText;
%Round off so ASCII letters can be applied
decodedNumbers = round(transDecodedNumbers);
% Get the decoded text matrix back into a proper vector form
decodedNumbersVector = decodedNumbers(:);
% Apply final conversion back into letters
decodedText = char((decodedNumbersVector+96)');
end
end