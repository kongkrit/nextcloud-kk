#!/bin/sh

echo "hacking www-data to become PUID=$PUID PGID=$PGID"
SEDEX="s/www-data:x:[0-9]+:[0-9]+:/www-data:x:${PUID}:${PGID}:/g"
echo "sed /etc/passwd with [$SEDEX]"
cat /etc/passwd | \
sed -E $SEDEX > /tmp/passy
cp /tmp/passy /etc/passwd
rm /tmp/passy

