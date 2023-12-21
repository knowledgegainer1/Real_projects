#!/bin/bash

name=""
wishes=""

usage() {
    echo "usage :: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. ex, Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n) name="$OPTARG";;
        w) wishes="$OPTARG";;
        h) usage; exit;;
        :) echo "Option -$OPTARG requires an argument." >&2; usage; exit 1;;
        \?) echo "Invalid option: -$OPTARG" >&2; usage; exit 1;;
    esac
done

if [ -z "$name" ] || [ -z "$wishes" ]; then
    echo "error: both -n and -w should be passed"
    usage
    exit 1
fi

echo "Hello, $name. $wishes. Welcome to the class"