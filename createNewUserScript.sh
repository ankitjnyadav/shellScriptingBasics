#!/bin/bash
id=`id -u`
if [[ ${?} != 0 ]]
then 
	echo 'id not executed successfully'
	exit 1
fi

if [[ $id -ne 0 ]]
then 
	echo 'Not a root user'
	exit 1
fi

read -p "Enter the userName: " USER_NAME
echo $USER_NAME

read -p "Enter the comments: " COMMENTS
#echo $COMMENTS

read -p "Enter the passwd: " PASSWORD
echo $PASSWORD

#-d $DIR
#-d $DIR

clear
useradd -D $NAME

if [[ ${?} != 0 ]]
then
	echo 'unable to add user' ${USERNAME}
	exit 3
fi
#Assiging Passwd
echo $PASSWORD | passwd --stdin ${USERNAME}

#Check whether passwd is set or not
if [[ ${?} != 0 ]]
then
	echo 'Password was not set'
	exit 4
else
	echo 'Password Set!!'
	#tail -n 5 /etc/shadow
	ls /home
fi

#Force password to change on 1st Login
passwd -e ${USERNAME}

echo 'Done!'
exit 0
