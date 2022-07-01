#!/bin/bash

data()
{
currentDate=`date +%m-%d-%Y`
echo $currentDate
   exit 0
}



for i in "$@"; do
  case $i in
    --data) data;;

    *)
  esac
done

