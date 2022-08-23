#!/bin/sh

set -x 

if [ $# -lt 2 ];then
        echo usage "input 1:name and 2:email!"
        exit 1
fi

ssh-keygen -t rsa -C $2

git config --global user.name $1
git config --global user.email $2