#!/bin/bash -ex

git checkout master
git fetch -a -t -p
git pull --all

git remote add mitchellh https://github.com/mitchellh/packer || :
git merge mitchellh/master
git push efxcia master

git remote add taliesins https://github.com/taliesins/packer.git || :
git checkout HyperV
git merge taliesins/HyperV
git push efxcia HyperV

git checkout master
