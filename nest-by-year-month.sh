#!/bin/bash
STARTTIME=$(date +%s)
echo "Start full nesting /nested directory by year and month..."

for image in `find nested -maxdepth 1 -not -type d`; do
  export year=`stat -f %SB -t %Y "$image"`
  export month=`stat -f %SB -t %m "$image"`
  # echo "nested/$year/$month"
    if [ -d "nested/$year/$month" ]
    then
      mv -n -v "$image" "nested/$year/$month"
    elif [ -d "nested/$year" ]
    then
      mkdir "nested/$year/$month"
      mv -n -v "$image" "nested/$year/$month"
    else
      mkdir "nested/$year"
      mkdir "nested/$year/$month"
      mv -n -v "$image" "nested/$year/$month"
    fi
done

ENDTIME=$(date +%s)
echo "Full nesting by date took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
