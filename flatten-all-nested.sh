#!/bin/bash
STARTTIME=$(date +%s)
echo "Start flattening directory"

find "flat" -mindepth 2 -type f -exec mv -i "{}" "flat" ";"

ENDTIME=$(date +%s)
echo "Flattening took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
