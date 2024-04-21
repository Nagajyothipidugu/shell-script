#!/bin/bash 

USERID=$( id -u ) 

VALIDATE(){
  echo "Exit status:$1" 
  echo "What are you doing: $2" 
}

if [ $USERID -ne 0 ] 
then 
  echo "Please run this script with root access" 
  exit 1 
else 
 echo "You are a super user " 

dnf install mysql -y 
VALIDATE $? "Installation of mysql" 

dnf install git -y 
VALIDATE $? "INSTALLATION OF GIT"
  