#!/bin/bash

CMD=/opt/alfresco-5.0.a/alfresco.sh

echo Starting Alfresco
date

$CMD start
date
echo Alfresco is ready for action

while : ; do
  $CMD status >/dev/null 2>&1
  _rc=$?
  if (($_rc)) ; then
    exit $_rc
  else
    sleep 5
  fi
done
