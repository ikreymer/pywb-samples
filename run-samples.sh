#!/bin/sh

mypath=$(cd `dirname $0` && pwd)

uwsgi $mypath/uwsgi.ini
