#!/bin/sh
# Change le numéro de version (index.html + version.json) avant chaque mise en ligne,
# pour que les joueurs voient le bouton « Mettre à jour ».
V=$(date -u +%Y%m%d%H%M)
sed -i "s/^const APP_VERSION = '.*';/const APP_VERSION = '$V';/" index.html
printf '{"version": "%s"}\n' "$V" > version.json
echo "Version $V"
