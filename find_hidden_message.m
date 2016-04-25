%find_secret_message.m

mat = image_to_matrix(input('Filename of encryption image: ','s'));

code = image_to_matrix(input('Filename of encrypted image: ','s'));

decoded = decodeTextFixed(code, mat);
disp(decoded)