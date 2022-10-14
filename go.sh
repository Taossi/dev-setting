#!/bin/sh

# install golang
# example here: go1.14.15
wget https://golang.google.cn/dl/go1.14.15.linux-amd64.tar.gz 

tar -C /usr/local -zxvf  go1.14.15.linux-amd64.tar.gz

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin