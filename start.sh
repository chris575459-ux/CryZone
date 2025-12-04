#!/bin/bash
# ---------------------------------------
# start.sh — Script de arranque SA-MP
# Carpeta original del usuario: CryZone
# ---------------------------------------

echo "Iniciando servidor SA-MP..."

# Dar permisos de ejecución al servidor
chmod +x /samp/samp03svr

# Dar permisos a los plugins
chmod -R +x /samp/plugins

# Entrar a la carpeta donde Docker guarda CryZone
cd /samp

# Iniciar el servidor SA-MP
./samp03svr
