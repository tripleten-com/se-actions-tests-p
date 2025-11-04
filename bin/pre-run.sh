#!/bin/bash

function print_red(){
	echo -e "\e[31m$@\e[0m"
}

function print_green(){
	echo -e "\e[32m$@\e[0m"
}

function check(){
	echo "---- Checking status code: $1 ----"
	if [[ $1 != 0 ]]
		then
		print_red "SUBMISSION FAILED"
		exit 1
	else
		print_green "SUCCESS"
	fi
}