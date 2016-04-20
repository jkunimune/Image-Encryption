function output = image_to_matrix(filename)

img = imread(filename);

img = (img(:,:,1)*.3 + img(:,:,2)*.59 + img(:,:,3)*.11);

output = img

imshow(img);

end