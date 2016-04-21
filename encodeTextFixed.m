%% Encrypts a string into a matrix through multiplication by the encryption
% matrix (i.e. the image)
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