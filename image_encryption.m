% image_encryption.m

mat = image_to_matrix(input('Filename of encryption image: ','s'));

output = encodeText(mat);
figure;
imshow(uint8(output*255/max(max(output))))

mat = do_SVD(mat, min(size(mat))/2);