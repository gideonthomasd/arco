#!/bin/bash

echo $(free -h | awk '(NR==2) {print$3}')
