% image_encryption.m

mat = image_to_matrix(input('Filename of encryption image: ','s'));

code = encodeTextFixed(mat);
img = uint8((code-min(min(code)))*255/(max(max(code))-min(min(code))));
figure;
imshow(img);
imwrite(img, 'mobydick.png');
%disp(code)

code = do_SVD(code, min(size(code))*.999);
%imshow(uint8((code-min(min(code)))*255/(max(max(code))-min(min(code)))))

decoded = decodeTextFixed(code, mat);
disp(decoded)