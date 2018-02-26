#!/bin/bash

CMD=/opt/alfresco-5.0.a/alfresco.sh

echo Starting Alfresco
date

$CMD start
date
echo Alfresco is ready for action

while : ; do
    sleep 10
done
$CMD status
date
exit 1
