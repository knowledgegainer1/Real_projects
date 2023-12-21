#!/bin/bash

name=""
wishes=""

usage() {
    echo "usage :: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n ,Specify the name (mandatory)"
    echo " -w ,Specify the wishes. ex,Good Morning"
    echo " -h,Display Helpand exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
    n) name="$optarg";;
    w) wishes="$optarg";;
    h) usage; exit ;;
    :) usage; exit ;;
    \?) echo "invalid options: -"$optarg"" >&2; usage ;exit;;
    esac
done

if [ -z "$name" ] || [ -z "$wishes" ]; then
    echo "error:both -n & -w should be passed"
    usage 
    exit 1
fi
echo "Hello, $name ---> $wishes ,Welcome to the class"
