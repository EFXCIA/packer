#!/bin/bash

git checkout master
GOOS=darwin GOARCH=amd64 go build -o packer_darwin_amd64 github.com/mitchellh/packer
GOOS=linux GOARCH=amd64 go build -o packer_linux_amd64 github.com/mitchellh/packer

git checkout HyperV
GOOS=windows GOARCH=amd64 go build -o packer_windows_amd64 github.com/mitchellh/packer

git checkout master
