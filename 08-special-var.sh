#!/bin/bash 

echo "All variables : $@ " 
echo "Number of variables passed : $#" 
echo "what is the script name : $0 " 
echo "what is the current working directory: $PWD" 
echo "Home directory of current user : $HOME" 
echo "which user is running the script : $USER " 
echo "Hostname : $HOSTNAME" 
echo "Process ID of current shell-script : $$" 
sleep 60 & 
echo "Process ID of last background command : $!" 

