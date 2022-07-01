#!/bin/bash

help()
{
   echo "Available commands:"
   echo "--help - Show this message"
   echo "--data - Show current date"
   echo "--logs - Create 100 log files"
   exit 0
}


data()
{
currentDate=`date +%m-%d-%Y`
echo $currentDate
   exit 0
}


logs()
{
currentDate=`date +%m-%d-%Y`

for i in {1..100}; do
	touch log${i}.txt;
	echo log${i} >> log${i}.txt;
	echo $0 >> log${i}.txt ;
	echo $currentDate >> log${i}.txt;
done

   exit 0
}





for i in "$@"; do
  case $i in
    --data) data;;
    --logs) logs;;
    --help) help;;
    *)
	echo "Unknown command: $i"
        help
        ;;
  esac
done

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    help
fi