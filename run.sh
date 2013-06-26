#!/bin/bash

REV=`svn up | grep "At revision" |  cut -d " " -f 3`

if [ ! -z $REV ]; then
    echo "BYE!BYE! ^_^ "
    exit 0
fi

forever stop /opt/node_js/iArduinoWo/app.js

forever start /opt/node_js/iArduinoWo/app.js