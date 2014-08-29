#!/bin/sh

# Copyright (C) rahul v r.
# Copyright (C) Bident Technologies Pvt Ltd.
 clear
 echo  ""
 echo  "HOST MANAGER INSTALLATION SETUP "
 echo  "================================"
 echo  ""
 echo  "Checking For Nginx Istallation ..."
 echo  ""
#if dpkg -l nginx | egrep 'nginx' > /dev/null 2>&1; then
   # echo "To Conrinue the process please uninstall the nginx."
   # exit      
#fi
 
 echo "Installing Nginx From Source ..."

 cd nginx
 #ls
 make install
 
 echo "Copying init.d file "
 cp init/nginx /etc/init.d/nginxf
 
  echo "Updating the startup file"
 
 /usr/sbin/update-rc.d -f nginx defaults
  clear
 echo "nginx installed successfully"
 
