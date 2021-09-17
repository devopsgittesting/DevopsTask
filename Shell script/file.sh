#!/bin/bash
#Problem stmt when extracting tar file i don't want to override on existing data or folder 
#sol- when extracting it will automatically override with existing data 
#we can exclude that folder or directory while extracting if folder already present then we will skip or exclude that folder
#and extract remaining folder 
#if that folder not present then extract all folders

Tarfile=sample.tar.gz

DIR="insconfig"
BASEDIR="sample"



if [ -d "$BASEDIR" ]

then 

echo "folder sample already present"
cd /root/scripting/sample/

if [ -d "$DIR"  ]
then
echo "$DIR Directory present"
tar --exclude insconfig -xvzf /root/scripting/sample.tar.gz -C /root/scripting/ 
echo "extract completed"

elif [ ! -d "$DIR" ]

then
echo "$DIR Directory not present"


tar -xvzf /root/scripting/sample.tar.gz -C /root/scripting

fi
else
echo "$BASEDIR Directory not present"


tar -xvzf /root/scripting/sample.tar.gz

fi

