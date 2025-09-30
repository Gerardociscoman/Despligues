#!/bin/bash

# Verificar que se haya pasado un parámetro
if [ -z "$1" ]; then
    echo "Uso: $0 <ruta_carpeta> [días]"
    exit 1
fi

FOLDER="$1"
DAYS="${2:-7}"  # Si no se pasa el segundo parámetro, usa 7 días por defecto

echo "Eliminando archivos en ${FOLDER} mayores a ${DAYS} días..."

# Buscar y eliminar archivos
find "$FOLDER" -type f -mtime +"$DAYS" -exec rm -f {} \;

echo "Limpieza completada."
