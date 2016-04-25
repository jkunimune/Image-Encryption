function res = do_SVD(img, k)

%mat = im2double(img,'indexed'); % reformat the matrix
mat = double(img);
[u,s,v] = svd(mat);             % do the svd
res = zeros(size(mat));

for i = 1:k
    res=res+ s(i,i)*u(:,i)*v(:,i).';    % reconstruct using only the largest values
end

%res = uint8(round(res-1));  % reformat it back
figure;
imshow(res)                 % display it