#!/bin/bash
while read -r line; do
echo -e "$line" >> /etc/hosts
done < $1
ufw disable
