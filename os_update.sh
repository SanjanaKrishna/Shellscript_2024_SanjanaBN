#!/bin/bash

OS=$(uname -s)
case $OS in
  Linux)
        echo "Updating Linux..."
    sudo apt update && sudo apt full-upgrade -y
    ;;
 Centos)
	 echo "Updating CentOS..."
    sudo yum update && sudo yum full-upgrade -y
    ;;

 default)echo "Unsupported $OS : CHECK AGAIN"
   ;;

esac

