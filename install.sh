#!/bin/bash
# URP txAdmin Theme Installer
# Kopieer dit naar je server en run het, of voeg toe aan Pterodactyl startup

MONITOR_PATH="/home/container/alpine/opt/cfx-server/citizen/system_resources/monitor"

echo "[URP Theme] Installing..."

# NUI
cp -f nui/index.html "$MONITOR_PATH/nui/index.html"
cp -f nui/index.js "$MONITOR_PATH/nui/index.js"
cp -f nui/index.css "$MONITOR_PATH/nui/index.css"
mkdir -p "$MONITOR_PATH/nui/images"
cp -f nui/images/txadmin.png "$MONITOR_PATH/nui/images/txadmin.png"

# Panel
cp -f panel/*.html "$MONITOR_PATH/panel/"
cp -f panel/*.js "$MONITOR_PATH/panel/"
cp -f panel/*.css "$MONITOR_PATH/panel/"
cp -f panel/*.js.map "$MONITOR_PATH/panel/" 2>/dev/null
cp -f panel/*.svg "$MONITOR_PATH/panel/"
cp -f panel/*.woff2 "$MONITOR_PATH/panel/"
mkdir -p "$MONITOR_PATH/panel/.vite"
cp -f panel/.vite/* "$MONITOR_PATH/panel/.vite/"

echo "[URP Theme] Done!"
