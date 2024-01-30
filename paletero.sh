#!/bin/bash

# Verifica si se proporcionaron suficientes argumentos
if [ "$#" -lt 2 ]; then
    echo "Uso: $0 archivo_entrada.png numero_colores"
    exit 1
fi

input_file="$1"
num_colors="$2"
output_file="paleta.png"

# Tamaño de la imagen
width=1000
height=400

# Archivo de colores
colors_file="paleta.txt"

# Obtener la paleta de colores y guardarla en el archivo
convert "${input_file}" +dither -colors "${num_colors}" -unique-colors txt: | tail -n +2 | awk '{print $3}' > "${colors_file}"

# Contar el número de colores en el archivo
num_colors=$(wc -l < "${colors_file}")

# Crear un fondo blanco
convert -size ${width}x${height} xc:white "${output_file}"

# Leer el archivo de colores y generar rectángulos
i=0
while read -r color; do
    rectangle_width=$((width / num_colors))
    convert "${output_file}" -fill "${color}" -draw "rectangle $((i * rectangle_width)),0 $(((i + 1) * rectangle_width)),${height}" "${output_file}"
    ((i++))
done < "${colors_file}"
