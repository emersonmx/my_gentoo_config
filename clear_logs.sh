#! /bin/bash

for logs in `find /var/log -type f`
do
    echo Limpando $logs ...
    cat /dev/null > $logs
done
