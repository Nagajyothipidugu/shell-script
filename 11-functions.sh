#!/bin/bash 

USERID=$( id -u ) 

VALIDATE(){
  if [ $1 -ne 0 ] 
  then 
   echo "$2 is ....FAILURE" 
  else 
   echo "$2 is.... SUCCESS" 
  fi  
}

if [ $USERID -ne 0 ] 
then 
  echo "Please run this script with root access" 
  exit 1 
else 
 echo "You are a super user " 
fi  

dnf install mysql -y 
VALIDATE $? "Installation of mysql" 

dnf install git -y 
VALIDATE $? "INSTALLATION OF GIT"
  