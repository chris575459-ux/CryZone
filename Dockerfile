# -------------------------------
# Dockerfile para servidor SA-MP
# Carpeta original del usuario: CryZone
# -------------------------------

# Imagen base ligera Debian
FROM debian:stable-slim

# Instalar dependencias necesarias para SA-MP y plugins
RUN apt-get update && apt-get install -y \
    libc6 \
    libstdc++6 \
    lib32gcc-s1 \
    libssl1.1 || true \
    && apt-get clean

# Crear carpeta donde se copiará CryZone dentro del contenedor
WORKDIR /samp

# Copiar TODO el proyecto CryZone dentro del contenedor
COPY . /samp

# Dar permisos al ejecutable y plugins
RUN chmod +x /samp/samp03svr \
    && chmod -R +x /samp/plugins \
    && chmod +x /samp/start.sh

# Exponer el puerto del servidor SA-MP
EXPOSE 7777/udp

# Ejecutar el script de arranque
CMD ["./start.sh"]
