#!/bin/bash
STARTTIME=$(date +%s)
echo "Start nesting by year..."

for image in `ls -1`; do
  export year=`stat -f %SB -t %Y $image`
    if [ -d "$year" ]
    then
      mv $image $year
    else
      mkdir $year && mv $image $year
    fi
done

ENDTIME=$(date +%s)
echo "Nesting by Year took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
