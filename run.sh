#!/bin/bash

REV=`svn up | grep "At revision" |  cut -d " " -f 3`

REV1=`ps -ef | grep "iArduinoWo" | grep -v grep | awk '{print $2}'`

if [ ! -z $REV ] && [ -n $REV1 ]; then
    echo "BYE!BYE! ^_^ "
    exit 0
fi

if [ -z $REV ] && [ -n $REV1 ]; then
	forever stop /opt/node_js/iArduinoWo/app.js
fi

if [ -z $REV ]; then
	forever start /opt/node_js/iArduinoWo/app.js
fi
