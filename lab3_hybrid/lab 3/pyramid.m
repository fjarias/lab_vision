I0 = imread('C:\Users\Francisco\Pictures\finale.png');
I1 = impyramid(I0, 'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');

imshow(I0)
figure, imshow(I1)
figure, imshow(I2)
figure, imshow(I3)