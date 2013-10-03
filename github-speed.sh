#!/bin/bash
cd "$(dirname "$0")"

lockFile="/tmp/githubspeed.pid"

if [ -f "$lockFile" ]
then
    pid=$(cat $lockFile)
    echo "Killing github ssh process with id: $pid"
    kill -9 $pid
    rm -rf $lockFile
    echo "done"
else

    echo "Starting long lived connection to github..." 
    pid=$(nohup ssh -N git@github.com > /dev/null 2>&1 & echo $!)
    echo $pid > $lockFile
    echo "done"
fi
