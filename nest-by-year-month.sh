#!/bin/bash
STARTTIME=$(date +%s)
echo "Start full nesting by year and month..."

for image in `ls -1`; do
  export year=`stat -f %SB -t %Y $image`
  export month=`stat -f %SB -t %m $image`
    if [ -d "$year/$month" ]
    then
      mv $image "$year/$month"
    else
      mkdir $year
      mkdir "$year/$month"
      mv $image "$year/$month"
    fi
done

ENDTIME=$(date +%s)
echo "Full nesting by date took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
