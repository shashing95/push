#!/bin/bash-x

read foldername
if [ -d $folderName ]
then
echo "folder already exist"
else
mkdir $folderName
echo "created new folder"

