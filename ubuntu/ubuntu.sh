#!/bin/sh

index=1
for app in $(ls -d $OS_DIR/*/)
do
echo $index: $app
index=$(expr $index + 1)
done

while [ $command = "q" ]
do
read $command
case $command


esac
