#!/bin/bash
#enter the logs directory
cd /opt/zato/env/server1/logs
tarName=$(date +'%Y-%m-%d_%H-%M-%S').tar.gz

logNum=$(ls server.log.*)
if [ ${#logNum} -gt 0 ]
then
    echo 'These files exist.'
    tar -cvf ${tarName}  server.log.*
    rm server.log.*
else
    echo "This file doesn't exist."
fi

