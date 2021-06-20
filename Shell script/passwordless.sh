#!/bin/bash
clear

#set -x

SSHKEY=$HOME/.ssh/id_rsa.pub
#KEYLOCATION=`cd $HOME/.ssh/ && ll`

echo -e "\n\n ########### SSH Password Less Login Script ###########\n\n"

echo -e "Host Machine : $HOSTNAME \n"
echo -e "Currently Logged in user : `whoami` \n\n"
echo -e "Enter Username of Remote Machine : \n"
read username
echo -e -n "\nEnter IP Address of Remote Machine in This Format: 192.122.1.1 \n"
read ip

ping -c1 $ip &> /dev/null  
 if [ $? -eq 0 ]          
then
 echo -e "\n\nServer $ip is Available to Connect !!!"
 
echo -e "\n\nFirst Check SSH Keys Are Present on Host machine or not If Not Present it will start Key Generate Process"

#searchip=`cat $HOME/.ssh/known_hosts | grep $ip | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}'`



if [ -f "$SSHKEY" ];
then
echo -e "\nSSH Keys Are Present in HOST MACHINE\n\n" 

#echo -e "\n Now Copy $SSHKEY to remote machine $ip"

ssh $username@$ip 'mkdir .ssh'

cat $SSHKEY | ssh $username@$ip 'cat >> $HOME/.ssh/authorized_keys'

echo -e "\n SSH KEYS Successfully copyied now We are Connecting... to $ip \n\n"

ssh $username@$ip 'chmod 700 $HOME/.ssh; chmod 640 $HOME/.ssh/authorized_keys'


ssh $username@$ip


else
#p=`cat known_hosts | grep $ip`

echo -e "\n\n SSH Keys Not Present, Now Create New SSH Keys\n"

echo -e "\n\n********** Key Generate Process ************\n"

ssh-keygen -q -t rsa -N '' <<< ""$'\n'"y" 
echo $?

#echo "\n COPY SSH KEY TO REMOTE MACHINE PROCESS OF $ip "

echo -e "create directory in remote machine $ip \n"

#echo "IT PROMPT TWO TIMES FOR CREATING DIRECTORY & COPY KEY TO REMOTE SERVER"

ssh $username@$ip 'mkdir .ssh'


cat $SSHKEY | ssh $username@$ip 'cat >> $HOME/.ssh/authorized_keys'

#Security pupose
ssh $username@$ip 'chmod 700 $HOME/.ssh; chmod 640 $HOME/.ssh/authorized_keys'

echo -e "Keys Generating Process Completed..!!!\n\n"

fi
else

echo "Server $ip is Not Available to Connect..!!"
fi


