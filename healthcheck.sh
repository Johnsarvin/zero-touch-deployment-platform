#!/bin/bash

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)

if [ "$STATUS" = "200" ]
then
    echo "Application Healthy"
else
    echo "Application Down"
fi
