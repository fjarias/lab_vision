# Warmup Questions

1.  What is the clone url of this repository?
    >  Una URL (Uniform Resource Locator) es un identificador que permite ubicar un recurso en una red, en el caso de Git se refiere al identificador con el cual se puede ubicar un clon de un repositorio. Un clon en Git  es una copia funcional de un repositorio para todos sus archivos con sus respectivas historias de cambios y es perfectamente funcional para reemplazar al repositorio original en caso de una perdida de datos.

2.  What is the output of the ``cal`` command?
	> El comando muestra el calendario del mes en curso en la fecha del sistema.

# Homework Questions

1.  What is the ``grep``command?
    >   El comando grep permite buscar una o más cadenas de caracteres en un texto, que bien puede ser un archivo, un grupo de archivos cuando se utiliza con la opción -r para uso recursivo, o la salida de texto de algún comando usando shell pipes “|”. 

2.  What is a *makefile*?
    >   Un makefile es un archivo de macro que tiene las instrucciones para compilar y enlazar un ejecutable, como por ejemplo un programa escrito en lenguaje de programación C.

3.  What is *git*?
    >   Git es un sistema de control de versiones que funciona con base en un mini sistema de archivos, sobre el cual se lleva a cabo la gestión de las versiones mediante el uso de instantáneas o “snapshots” de estos archivos, registrando aquellos que han cambiado y manteniendo enlaces a los que no, permitiendo tener versiones completas de los proyectos y no solo de los cambios como en otros sistemas de control de versiones.

4.  What does the ``-prune`` option of ``find`` do? Give an example
    >   La opción “prune” evita que el comando find descienda en un archivo si este es un directorio, en otras palabras la opción se utiliza parea excluir de la búsqueda los directorios especificados.
Ejemplo: find . -name textures -prune -o -print
Este comando busca todas las imágenes en el directorio actual (sipi_images) omitiendo el directorio “textures”

5.  Where is the file ``xxxxxx``
    >   Los archivos temporales xxxxxx tipicamente se ubican en el directorio $Home/tmp.

6.  How many files with ``gnu`` in its name are in ``/usr/src ``
    >   Este conteo se puede realizar con el comando: find /usr/src -name *gnu*.* | wc -l Compuesto por dos partes: primero la búsqueda en el directorio “dir” de todos los archivos que contengan la expresión “gnu” en su nombre, y al resultado de esta búsqueda se le hace un conteo de lineas mediante un shell pipe con el comando wc -l.

7.  How many files contain ``gpl`` inside in ``/usr/src``
    >    Este conteo se puede realizar con el comando: grep -r “gpl” /usr/src | wc -l Compuesto por dos partes:  la búsqueda recursiva dentro de los archivos contenidos en el directorio “dir” y al resultado de esta búsqueda se le hace un conteo de lineas mediante un shell pipe con el comando wc -l.

8.  What does the ``cut`` command do?
    >   Este comando se usa con propósito de procesamiento de textos, sirve para extraer una porción de texto de un archivo o de la salida de texto de un proceso mediante shell pipes, especificando las columnas que delimitan la porción de texto, o para el caso de archivos delimitados por algún carácter (por ejemplo la coma), los campos en cuestión. 

9.  What does the ``wget`` command do?
    >   Este comando se utiliza para descargar contenido de forma desatendida desde una red por medio de los protocolos HTTP, HTTPS y protocolos FTP, también permite descargar enlaces a sitios Web para ser vistos fuera de linea. Ejemplo: wget http://www.site.com/file.zip

10.  What does the ``diff`` command do?
    >   Este comando permite comparar dos archivos señalando sus diferencias imprimiendo las lineas discrepantes Ejemplo: diff file1.txt file2.txt

11.  How many users exist in *Guitaca*?
    >   Este conteo se puede generar con el siguiente comando: cat /etc/passwd | wc -l Compuesto por dos partes: El listado de los usuarios que se encuentra en el archivo passwd en el directorio /etc, y al resultado de este listado se le hace un conteo de lineas mediante un shell pipe con el comando wc -l.

12. What command will produce a table of Users and Shells sorted by shell (tip: using ``cut`` and ``sort``)
    >   La tabla se puede generar con el comando: cat /etc/passwd | cut -d: -f1,7 | sort -k2 Compuesto por 3 partes: El listado de los usuarios que se encuentra en el archivo passwd en el directorio /etc; de este listado se extraen con el comando “cut”, las columnas 1 y 7 correspondientes al nombre de usuario (LoginID) y shell usado respectivamente, y finalmente al resultado de la selección se le ordena por la segunda columna es decir por el shell con el comando “sort”.

13. What command will produce the number of users with shell ``/sbin/nologin`` (tip: using ``grep`` and ``wc``)
    >   Este conteo se puede generar con el siguiente comando: cat /etc/passwd | cut -d: -f7 | grep “/sbin/nologin” | wc -l Compuesto por cuatro partes: El listado de los usuarios que se encuentra en el archivo passwd en el directorio /etc; de este listado se extrae con el comando “cut”, la columnas 7 correspondiente al shell usado; en esta selección se realiza la búsqueda del shell “sbin/nologin” con el comando “grep”, y finalmente se hace el conteo de lineas con el comando “wc -l”

14.  What is the name of the linux distribution running on *Guitaca*?
    >   Esta información puede obtenerse con el comando: cat /etc/*-release ó lsb_release -a Tomado de: http://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/

15. Create a script for finding duplicate images based on their content (tip: hash or checksum)
    You may look in the internet for ideas, but please indicate the source of any code you use
    Save this script as ``find_duplicates.sh`` in this directory and commit your changes to github
	> https://github.com/fjarias/lab_vision/blob/master/lab0_intro/find_duplicates.sh


16. What is the meaning of ``#! /bin/bash`` at the start of scripts?
    >   A esta linea se le conoce como “bang” o “Shebang” y su propósito es especificar la ruta absoluta del interprete de Bash que ejecutará el script.

17. How many unique images are in the ``sipi_images`` folder?
    >   De acuerdo con el script del punto 15 hay 3 imagenes repetidas, por lo que el numero de imagenes unicas seria el numero total de imagenes menos 3 find sipi_images *.tiff | wc -l que es 215, entonces 215 - 3 = 212
    

