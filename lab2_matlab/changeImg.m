function changeImg(fileName)
    img = imread(fileName,'TIFF');
    newFileName = strcat(fileName, '_new');
    imwrite(img,newFileName,'PNG');
end
