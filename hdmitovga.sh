#!/bin/sh
echo "************************************************************"
echo "Automated Script to Configure HDMI to VGA on Raspberry Pi \n"
echo "Copyright -2014 (Tenet Technetronics, Bangalore, India \n"
echo "Author - Praveen Kumar\n " 
echo "Code Reviewer : Ram \n"
echo " Revision Number :1 \n"
echo "************************************************************\n"

#Example Usage 

#run the program and enter the hdmi_group and hdmi_mode value depends on your monitor
#for more details about the configuration go through the following link
#http://elinux.org/RPiconfig 


#**********************************************************************************
#copy and paste the code with a hdmitovga.sh file name
#give the executable permisssion for the file by running the following command
#sudo chmod 775 hdmitovga.sh
#execute the file
#sudo ./hdmitovga.sh
#**********************************************************************************

#path of the configuration file
CONFIG_FILE="/boot/config.txt"

#getting hdmi_group value from user
read -p "enter hdmi_group=:" HDMI_GROUP

#getting hdmi_group value from user
read -p "enter hdmi_mode=:" HDMI_MODE

sed -i "s/#hdmi_group=1/hdmi_group="$HDMI_GROUP"/" $CONFIG_FILE

sed -i "s/#hdmi_mode=1/hdmi_mode="$HDMI_MODE"/" $CONFIG_FILE

sed -i 's/#hdmi_force_hotplug=1/hdmi_force_hotplug=1/g' $CONFIG_FILE  

sed -i 's/#hdmi_drive=2/hdmi_drive=2/g' $CONFIG_FILE 

sed -i 's/#config_hdmi_boost=4/config_hdmi_boost=4/g' $CONFIG_FILE 

echo "Configuration values updated successfully"

echo "The System is going down for reboot Now!"

sudo reboot



                                    
