# Paletero
Paletero es un pequeño script que usa ImageMagick para generar una paleta de colores en formato png y en colores hex.

## Instalación y uso
Para usarlo pimero debes instalar ImageMagick que está disponible en la mayoría de distribuciones de GNU/Linux:
```bash
sudo apt install imagemagick
```

Luego añade permisos de ejecución `chmod +x paletero.sh` y luego ejecútalo así para una imagen_entrada.jpg y 15 colores a extraer:
```bash
./paletero.sh imagen_entrada 15
```

## Muestra
Revisa el directorio `showcase/`.

## Contribuir
Disfrútalo y te invitamos a participar de este proyecto y mejorarlo en lo que tu consideres, por ejemplo recibir tamaño del archivo de dalida (`width` y `height`) como parámetros opcionales del script.

No olvides pasar por nuestro [Canal de Telegram](https://t.me/salamandradevs)
