#!/bin/bash
#
#
search_dict_dir='/home/'

dicts_path="$(find $search_dict_dir -type d -name SLOWNIKI)"
config_path="$(awk -F: '$3 == "1000" {print $6}' /etc/passwd)/.goldendict"

ln -s "$dicts_path" /opt/SLOWNIKI
mkdir "$config_path"
cp --backup=numbered "$dicts_path/goldendict-conf/{config,history}" "$config_path"
