#!/bin/sh
# Bash completion for root
# edit /etc/bash.bashrc; delete hash-comments to enable system wide bash completion

start=$(( "$(grep -n '# enable bash completion in interactive shells' /etc/bash.bashrc | cut -d':' -f1)" + 1 ))

end=$(( "$start" + 7 ))

sed -i "$start,$end s/^#//" /etc/bash.bashrc
