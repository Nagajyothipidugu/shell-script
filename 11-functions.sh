#!/bin/bash 

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


VALIDATE(){
  if [ $1 -ne 0 ] 
  then 
   echo "$2 is ....FAILURE" 
   exit 1
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

dnf install mysql -y  &>>$LOGFILE
VALIDATE $? "Installation of mysql" 

dnf install git -y  &>>$LOGFILE
VALIDATE $? "INSTALLATION OF GIT"
  