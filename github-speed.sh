#!/bin/bash
cd "$(dirname "$0")"

lockFile="githubspeed.pid"

if [ -f "$lockFile" ]
then
    pid=$(cat $lockFile)
    echo "Killing github ssh process with id: $pid"
    kill -9 $pid
    rm -rf $lockFile
else

    echo "Starting long lived connection to github..." 
    pid=$(nohup ssh -N git@github.com > /dev/null 2>&1 & echo $!)
    echo $pid > $lockFile
    echo "done"
fi
