function imageOutput = image_to_matrix(filename)

img = imread(filename); % load the image

if length(img(1,1,:)) > 1
    imageOutput = (img(:,:,1)*.3 + img(:,:,2)*.59 + img(:,:,3)*.11);    % convert to grayscale matrix
else
    imageOutput = img;
end

end