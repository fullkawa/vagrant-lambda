#!/usr/bin/env bash

echo "bootstrapping.."

set -e
set -v

sudo su

useradd --no-create-home -d /var/task -s /bin/bash sbx_user1000
echo "lambda" | passwd sbx_user1000 --stdin

dnf install nodejs.x86_64 -y
dnf install npm.noarch -y

npm install -g aws-sdk
#npm install -g nave
#nave install stable

set +v
echo "done."
