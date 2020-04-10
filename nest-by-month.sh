#!/bin/bash
STARTTIME=$(date +%s)
echo "Start nesting by month..."

for image in `ls -1`; do
  export month=`stat -f %SB -t %m $image`
    if [ -d "$month" ]
    then
      mv $image $month
    else
      mkdir $month && mv $image $month
    fi
done

ENDTIME=$(date +%s)
echo "Nesting by Month took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
