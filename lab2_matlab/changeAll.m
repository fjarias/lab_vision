% Obtener la lista de las imagenes tiff en el directorio
[status,cmdout]= system('find ./misc -name *.tiff | cut -d''/'' -f3');
% Convertir en arreglo el listado
pics = strsplit(cmdout,'tiff');
% Obtener el numero de imagenes
dimPics = size(pics);
numPics = dimPics(2);

% Iterar sobre el listado de imagenes y llamar la funcion changeImg.m
i = 1;
while i < numPics
   fileName =  strcat('./misc/', strtrim(pics{1,i}), 'tiff');   
   changeImg(fileName); 
   i = i + 1;
end
