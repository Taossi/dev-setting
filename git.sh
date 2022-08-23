#!/bin/sh

set -x 

if [ $# -lt 1 ];then
        echo usage "input email!"
        exit 1
fi

ssh-keygen -t rsa -C $1