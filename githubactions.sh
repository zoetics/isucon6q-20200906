#!/bin/bash
set -xe

git checkout master && git pull origin master
cd webapp && make
