#!/bin/sh

mypath=$(cd `dirname $0` && pwd)

export 'PYWB_CONFIG_FILE=./samples-config.yaml'

app="pywb.apps.wayback"
port="9080"

#run with 10 processors
params="--http-socket :$port -b 65536 -p 10 --wsgi $app"

# Support for virtualenv
if [ -n "$VIRTUAL_ENV" ] ; then
    params="$params -H $VIRTUAL_ENV"
fi

uwsgi $params

