#!/bin/bash
TZ=`timedatectl | grep "Time zone"`

CURRENT_TIME_ZONE=`date +"%Z %z"`
TIME_ZONE="IST +0530"

clear

echo -e "\n\n************** CONVERT CURRENT TIME ZONE TO IST ********************"
echo -e "\n $TZ\n"

if [ "$CURRENT_TIME_ZONE" == "$TIME_ZONE" ];
then
echo "No Need to Convert because Current Time Zone is $CURRENT_TIME_ZONE"
else
echo "Need to Convert Current TIME ZONE To IST"

timedatectl set-timezone Asia/Kolkata

NEWTZ=`timedatectl | grep "Time zone"`
echo -e "\nNow Current Changed Time zone is $NEWTZ\n"

fi
