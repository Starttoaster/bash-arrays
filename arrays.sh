#!/bin/bash

shopt -s lastpipe
index=0
delnum=0

#
# Receives the environment variable from "send" and ensures that the array doesn't currently have the value from "send" already.. 
# Once done, it adds the value from "send" to the array, and deletes the oldest value in the array.
# 
function receive {
	ARRSTRING="$(echo "${arr[@]}")"
	INARR="$(echo "$ARRSTRING" | grep "$NEW")"
	if [ "$INARR" = "" ]; then
		addnew
		deleteold
	fi
}

# Deletes the oldest element in the array once it reaches 9 total elements
function deleteold {
	if [ "${#arr[*]}" -gt 9 ];then	
		unset "arr["$delnum"]"
		: $((delnum++))
	fi;
}

# Adds an env variable called "NEW" to the array named "arr"
function addnew {
	arr+=( "$NEW" )
}

# Creates env variable with data of "this#"
function send {
        NEW="this"$index""
        : $((index++))
}


while true; do
	send
	receive
	echo "${arr[@]}"
	sleep 1
done	
