#!/bin/sh

#Basado en el script de xaxa http://linux-beta.slashdot.org/story/14/01/23/2227241/does-anyone-make-a-photo-de-duplicator-for-linux-something-that-reads-exif
#Crea un archivo con el listado de imagenes repetidas, comparandolas con el Md5 (comando md5sum)

OUTF=rem-duplicates.sh;

echo "#! /bin/sh" > $OUTF;

find "$@" -type f -print0 |
    xargs -0 -n1 md5sum |
        sort --key=1,32 | uniq -w 32 -d --all-repeated=separate |
            sed -r 's/^[0-9a-f]*( )*//;s/([^a-zA-Z0-9./_-])/\\\1/g;s/(.+)/#rm \1/' >> $OUTF;

chmod a+x $OUTF; ls -l $OUTF
