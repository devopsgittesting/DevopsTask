

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

