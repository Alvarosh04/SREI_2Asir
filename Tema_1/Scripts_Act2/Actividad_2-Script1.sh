#!bin/bash

if [ $# -ne 1 ]; then
    echo "Introduce solo un puerto"
    exit 1
fi

if grep "Listen $1" /etc/apache2/ports.conf; then
    echo "El puerto ya está en el archivo"
    exit 1
else
    echo "Listen $1" >> /etc/apache2/ports.conf
    echo "Puerto añadido correctamente"
fi;
