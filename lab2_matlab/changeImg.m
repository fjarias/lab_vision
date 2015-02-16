
function changeImg(fileName)
    img = imread(fileName,'TIFF');
    newFileName = strcat(fileName, '.jpg');
    imwrite(img,newFileName,'JPG');
end
