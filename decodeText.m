% Function takes encrypted text matrix and the image and uses them to
% decode the message. Returns original message.
function decodedText = decodeText(encodedText, imageOutput)
% Take in stuff
encryptionMatrix  = imageOutput;
% Apply encryption matrix as inverse to encoded text to decode.
transDecodedText = inv(encryptionMatrix) * encodedText;
% Get the decoded text matrix back into a proper vector form
numbersDecodedMatrix = transDecodedText';
numbersDecodedMatrix(:)' = numbersDecodedVector;
% Apply final conversion back into letters
decodedText = char(numbersDecodedVector+96);
end