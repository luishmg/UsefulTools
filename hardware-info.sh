#!/bin/bash
sudo lshw | sed -n "/\*-memory/,+4p;/[dD][dD][rR]/p;/\*-cpu/,+13p;1,9p;/\*-network$/,+13p" | sed -re "s/^ +//g" | sed -r "/(\*.*$|${HOSTNAME,,}.*$)/!  s/(.*)/    \1/g;/(\*.*$|${HOSTNAME,,}.*$)/ s/(.*)/\U\1/g"
