#!/bin/bash

catcher() {
	echo "Caught signal: "$1
	case "$1" in
		"SIGINT")
			echo "Interrupting terminal program!"
			;;
		"SIGHUP")
			echo "Terminal line hungup!"
			;;
		*)
			echo "Unexpected signal!"
			;;
	esac
		
}

trap 'catcher SIGINT' SIGINT
trap 'catcher SIGHUP' SIGHUP
trap 'catcher SIGKILL' SIGKILL

while true; do
	sleep 1
done

# kill -SIGINT PID
