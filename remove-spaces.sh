#!/bin/bash
STARTTIME=$(date +%s)
echo "Start removing spaces in all files..."

# for oldname in *
# do
#   newname=`echo $oldname | sed -e 's/ /_/g'`
#   mv "$oldname" "$newname"
# done

for oldname in *
do
  newname=`echo $oldname | sed -e 's/ /_/g'`
  if [ "$newname" = "$oldname" ]
  then
    continue
  fi
  if [ -e "$newname" ]
  then
    echo Skipping "$oldname", because "$newname" exists
  else
    mv -v "$oldname" "$newname"
  fi
done

ENDTIME=$(date +%s)
echo "Removing spaces in all files took $(($ENDTIME - $STARTTIME)) seconds to complete."

exit
