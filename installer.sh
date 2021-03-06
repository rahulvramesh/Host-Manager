#!/bin/sh

# Copyright (C) rahul v r.
# Copyright (C) Bident Technologies Pvt Ltd.
 clear


#echo "Checking Sudo Previlage .."

if [ $UID -ne 0 ]; then
    echo "Install failed! To install you must be logged in as 'root', please try again."
    exit 1
fi

#echo "Ok.."

#echo "Checking for other control pannels"


if [ -e /usr/local/cpanel ] || [ -e /usr/local/directadmin ] || [ -e /usr/local/solusvm/www ] || [ -e /usr/local/home/admispconfig ] || [ -e /usr/local/lxlabs/kloxo ] ; then
    echo "You appear to have a control panel already installed on your server; This installer"
    echo "is designed to install on a clean OS installation only!"
    echo ""
    echo "Please re-install your OS before attempting to install using this script."
    exit
fi

 #add command for checking packages installed or not
 
 #add code for checking the OS version
 
 # Set custom logging methods so we create a log file in the current working directory.
logfile=$$.log
touch $$.log
exec > >(tee $logfile)
exec 2>&1


echo -e ""
echo -e "##############################################################"
echo -e "# Welcome to the installation process of hosting manage      #"
echo -e "# Server 12.04.x LTS                                         #"
echo -e "#                                                            #"
echo -e "# Please make sure your VPS provider hasn't pre-installed    #"
echo -e "# any packages required by HM.                               #"
echo -e "#                                                            #"
echo -e "# If you are installing on a physical machine where the OS   #"
echo -e "# has been installed by yourself please make sure you only   #"
echo -e "# installed Ubuntu Server with no extra packages.            #"
echo -e "#                                                            #"
echo -e "# If you selected additional options during the Ubuntu       #"
echo -e "# install please consider reinstalling without them.         #"
echo -e "#                                                            #"
echo -e "##############################################################"
echo -e ""

# We need to disable and remove AppArmor...
#[ -f /etc/init.d/apparmor ]
#if [ $? = "0" ]; then
 #   echo -e ""
 #   echo -e "Disabling and removing AppArmor, please wait..."
#    /etc/init.d/apparmor stop &> /dev/null
#	update-rc.d -f apparmor remove &> /dev/null
#	apt-get -y remove apparmor &> /dev/null
#	mv /etc/init.d/apparmor /etc/init.d/apparmpr.removed &> /dev/null
	##after removing AppArmor reboot is not obligatory
#	echo -e "Please restart the server and run the installer again. AppArmor has been removed."
        #exit
#fi

# Install some standard utility packages required by the installer and/or ZPX.
#apt-get -y install sudo wget vim make zip unzip git debconf-utils at




 
 
