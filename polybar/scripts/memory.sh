#!/bin/bash
a=$(free -h | awk 'NR==2 {print $3}')
b="Mem: "
echo "$b$a"
