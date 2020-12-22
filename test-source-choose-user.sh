#!/bin/bash

argument="$1"

. choose-user.sh $argument

echo $user_uid
echo $file_passwd
echo $user_path
