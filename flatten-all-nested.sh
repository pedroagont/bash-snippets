#!/bin/bash
STARTTIME=$(date +%s)
echo "Start flattening /flat directory..."

find flat -mindepth 2 -type f -exec mv -i -n -v "{}" flat ";"

ENDTIME=$(date +%s)
echo "Flattening took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
