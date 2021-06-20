#!/bin/bash
main_menu()
{

while :
do

 clear

echo "##########################################################"
echo "#                                                        #"
echo "#              !!  Menu Driven Script !!                 #"
echo "#                                                        #"
echo "##########################################################"        

echo "[1] RAM"
echo "[2] CPU Utilization"
echo "[3] Disk Usages"
echo "[4] Last System Reboot"
echo "[5] Processors"
echo "[6] Operating System"
echo "[7] Kernal Information"
echo "[8] Hostname"
echo "[9] Currently Loggedin Users"
echo "[10] Currently Logged in User"
echo "[11] Zombie Process"
echo "[12] IP Address"
echo "[13] Routing Information"
echo "[14] Check Network Active Connections"
echo "[15] Check Open Ports"
echo "[16] Load Average"
echo "[17] List Of Open Files"
echo "[18] List of Running Processes"
echo "[19] Exit "
echo "========================================================="
echo -e "Enter Your Menu Choice  [1-19]: \c "

read menu


case "$menu" in

            1) menu_1;;
            2) menu_2;;
            3) menu_3;;
            4) menu_4;;
            5) menu_5;;
            6) menu_6;;
            7) menu_7;;
            8) menu_8;;
            9) menu_9;;
            10) menu_10;;
            11) menu_11;;
            12) menu_12;;
            13) menu_13;;
            14) menu_14;;
            15) menu_15;;
            16) menu_16;;
            17) menu_17;;
            18) menu_18;;
            19)exit 0;;
            
             *) echo -e "\n !!Please Select Correct Choice";
             echo "Press ENTER To Continue..." ; read ;;
 
         esac

done

}


   menu_1()
{
echo "******************************* RAM ************************************"
echo -e "\n"

free -mh

echo -e "\n Press Enter To Continue...."
read 
 return

}




   menu_2()
{
 echo "menu 2"
echo "***************************** CPU Utilization *******************************"
echo -e "\n"

sar | more

echo -e "\n Press Enter To Continue...."
read
 return

}



   menu_3()
{
echo "****************************** Disk Usages **********************************"
echo -e "\n"
df -hT 
 echo -e "\n Press Enter To Continue...."
read
 return

}



   menu_4()
{
echo "************************** ** System Uptime ******************************"
echo -e "\n"
uptime
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}




   menu_5()
{
 echo "***************************** Processors *****************************  "

echo "Number Of Processors: `nproc`"
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}


 menu_6()
{
 echo "************************** Operating System **************************"

cat /etc/*-release

echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_7()
{
 echo "************************** Kernal Information **************************"
uname -a
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_8()
{
 echo "************************** Hostname **************************"
hostname
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_9()
{
 echo "************************** Currently Loggedin Users **************************"
who
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_10()
{
 echo "************************** Currently Logged in User **************************"
whoami
echo -e "\n"
echo -e"\n Press Enter To Continue...."
read
 return

}

 menu_11()
{
 echo " ************************** Zombie Process **************************"
 
ps -A -ostat,ppid | grep [zZ]

echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_12()
{
 echo "************************** IP Address **************************"
ip addr show
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_13()
{
 echo "************************** Routing Information ************************** "
route
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_14()
{
 echo "**************************Check Network Active Connections**************************"
netstat -na | more
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_15()
{
 echo "**************************Check Open Ports**************************"
netstat -tunlp | more
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_16()
{
 echo "**************************Load Average**************************"
echo -e "\n"

load=`uptime | awk -F: '{print $4}'`
echo "Load Average:$load"

echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_17()
{
 echo "**************************List Of Open Files**************************"
lsof | more
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}

 menu_18()
{
 echo "**************************List of Running Processes**************************"
ps -ef | more
echo -e "\n"
echo -e "\n Press Enter To Continue...."
read
 return

}



 menu_19()
{
 echo "Exit"
echo -e "\n Press Enter To Continue...."
read
 return

}

  main_menu


