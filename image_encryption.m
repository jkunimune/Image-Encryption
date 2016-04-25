% image_encryption.m

mat = image_to_matrix(input('Filename of encryption image: ','s'));

code = encodeTextFixed(mat);
img = uint8((code-min(min(code)))*255/(max(max(code))-min(min(code))));
figure;
imshow(img);
imwrite(img, 'mobydick.png');
disp(code)
%mat = do_SVD(mat, min(size(mat))*.5);

decoded = decodeTextFixed(code, mat);
disp(decoded)