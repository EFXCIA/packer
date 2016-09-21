#!/bin/bash -ex

git remote add mitchellh https://github.com/mitchellh/packer || :
git remote add taliesins https://github.com/taliesins/packer.git || :

git checkout master
git fetch -a -t -p
git pull --all

git merge mitchellh/master
git push origin master

git checkout HyperV
git merge taliesins/HyperV
git push origin HyperV

git checkout master
