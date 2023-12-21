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
    n) name="$optarg" ;;
    w) wishes="$optarg" ;;
    h | *)
        usage;
        exit
        ;;
    :) usage;
        exit
        ;;
    esac
done
