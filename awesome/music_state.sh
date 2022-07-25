#!/bin/bash

mocp -i | awk '(NR==1) {print $2}'
