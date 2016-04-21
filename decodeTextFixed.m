%% Function takes encrypted text matrix and the image and uses them to
% decode the message. Returns original message.
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