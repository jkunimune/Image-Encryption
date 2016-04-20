function imageOutput = image_to_matrix(filename)

img = imread(filename); % load the image

imageOutput = (img(:,:,1)*.3 + img(:,:,2)*.59 + img(:,:,3)*.11);    % convert to grayscale matrix

imshow(imageOutput);    % show the image

end