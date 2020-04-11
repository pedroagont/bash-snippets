#!/bin/bash
STARTTIME=$(date +%s)
echo "Start moving all files from /flat to /nested directory..."

find flat -name '*.*' -exec mv -n -v {} nested \;

ENDTIME=$(date +%s)
echo "Moving all files took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
