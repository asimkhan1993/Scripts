#!/bin/bash

#Title          :   Apache Threads Script
#
#Project        :   https://www.linkedin.com/in/m-irfan-aslam/
#
#Description    :   Use this script to check no of active apache Threads
#
#
#
#Author         :   Muhammad Irfan Aslam
#
#Date           :   20181012
#
#Version        :   1.0
#
#Usage          :   Apache Active No of Threads
#
#Notes          :   This script can requires /bin/sh or /usr/bin/sh to run.
#======================================================================


OUTPUT="$(ps aux | grep -v grep | grep -c httpd)"


if [ $OUTPUT == 0 ] || [ $OUTPUT -lt 350 ] ;

then
  echo "OK: No.of threads=${OUTPUT} | Threads=${OUTPUT}";

exit 0

else

echo "Critical: No.of threads=${OUTPUT}| Threads=${OUTPUT}"
exit 2

fi
