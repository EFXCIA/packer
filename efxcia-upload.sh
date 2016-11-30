#!/bin/bash

url="http://repo.devcentral.equifax.com/yum/content/repositories/cia-image-factory/com/equifax/cia/image-factory/kujo"
ver=$(./packer_darwin_amd64 --version)

curl -H "Expect: " --write-out "%{http_code}" -u "$1" --upload-file packer_linux_amd64 ${url}/packer_${ver}.dev.linux
curl -H "Expect: " --write-out "%{http_code}" -u "$1" --upload-file packer_darwin_amd64 ${url}/packer_${ver}.dev.mac
curl -H "Expect: " --write-out "%{http_code}" -u "$1" --upload-file packer_windows_amd64 ${url}/packer_${ver}.dev.exe

