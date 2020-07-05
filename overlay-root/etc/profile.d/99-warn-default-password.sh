#!/bin/sh

awk -F: '$3 <= 0' /etc/shadow | grep -Fq root: && echo "Please change the default root password!"
