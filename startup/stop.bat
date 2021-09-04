#!/bin/bash
if_exist(){
	pgrep -f $1 > /dev/null
}
stop_process(){
	if_exist $1 && sudo kill -9 $(pgrep -f $1) || echo "$1 not running"
}
stop_process openvpn3-service-config
stop_process sqldeveloper
stop_process chrome
stop_process smartgit
stop_process intellij-idea-ultimate
stop_process postman
stop_process gedit
