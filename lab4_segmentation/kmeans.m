%http://www.mathworks.com/help/images/examples/color-based-segmentation-using-k-means-clustering.html

%Leer la imagen a segmentar
oi = imread('C:\Users\Francisco\Documents\Vision\seg_images\images\2018.jpg');

%Pasar la imagen al espacio de colores preceptualmente uniforme lab
cform = makecform('srgb2lab');
lab = applycform(oi,cform);

ab = double(lab(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

nColors = 10;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);

pixel_labels = reshape(cluster_idx,nrows,ncols);
imshow(pixel_labels,[]), title('image labeled by cluster index');
