% Obtener la lista de las imagenes jpg en el directorio de train
[status,cmdout]= system('find ./test -name *.jpg | cut -d''/'' -f3');
% Convertir en arreglo el listado
pics = strsplit(cmdout,'jpg');
% Obtener el numero de imagenes
dimPics = size(pics);
numPics = dimPics(2);

% Iterar sobre el listado de imagenes, llamar la funcion segment_by_clustering 
% para 2,3 y4 clusters y guardar los resultados en un archivo.mat 
i = 1;
while i < numPics
    fileName = strtrim(pics{1,i});
    imgPath = strcat('./test/', strtrim(pics{1,i}), 'jpg');
    
    % Cargar la imagen
    oi =  imread(imgPath);
    
    % Aplicar la función

    km2 = segment_by_clustering(oi, 'lab', 'kmeans', 2);
    km3 = segment_by_clustering(oi, 'lab', 'kmeans', 3);
    km4 = segment_by_clustering(oi, 'lab', 'kmeans', 4);
        
    % Guardar el archivo imgName.mat
    matFileName = strcat(fileName, 'mat');
    save(matFileName, 'km2', 'km3', 'km4');
    
    i = i + 1;
end
