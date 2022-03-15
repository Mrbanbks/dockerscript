#!/bin/bash

#Author: Hippolyte Chi
   
#Date :03/15/2022

	## ------- script that would delete images and conatiners on docker ----------

echo "Your Images and containers are about to be deleted stay calm...."

sleep 2

echo "lets begin with your containers..."

sleep 2

docker rm -f  $(docker ps -a -q)

sleep 2

if [ $? -eq 0 ]

then 
echo "Your  containers have been successfully deleted!!!!!."

fi

sleep 2

echo " lets now delete all the images....."

sleep2

docker rmi $(docker iamges -q) -f

sleep 2

if [ $? -eq 0 ]

then 

echo "All your images have now been deleted"

fi

sleep 2

echo "All your images and containers have been deleted successfully"

	
	
