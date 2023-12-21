#!/bin/bash

name=""
wishes=" Good Morning"   #for optional value value here is hardcoded ,if user doesnt give value then this value will be printed or it will br overrided

usage() {
    echo "usage :: $(basename $0) -n <name> -w <wishes>"   # sada.sh baseline $0 will be script name 
    echo "Options::"
    echo " -n ,Specify the name (mandatory)"
    echo " -w ,Specify the wishes. (Optional)"
    echo " -h,Display Helpand exit"
}

while getopts ":n:w:h" opt; do # syntax for optargs  here we are giving 3 values for this project and storing in opt variable
    case $opt in #case if we give variables n w then case will go accordngly to that value 
    n) name="$OPTARG";;  #OPTARG should be in caps only as linux is case sensitive langauge  & arguments after -n xxx will stored in optarg and assigned to vaiable name &usage is function called 
    w) wishes="$OPTARG";;
    h) usage; exit;; 
    :) usage; exit 1;;  #here no arg passeed means condition
    \?) echo "invalid options: -"$OPTARG"" >&2; usage; exit 1;;  #wrong input given means 
    esac
done

#if [ -z "$name" ] || [ -z "$wishes" ]; then    #if only one is passed then it will trow error
if [ -z "$name" ] ; then
   # echo "error:both -n & -w should be passed"
   echo "error: -n should be passed"
    usage
    exit 1 
fi
echo "Hello, $name . $wishes ,Welcome to the class"  #finally correct op will be given  after above conditions are passed
