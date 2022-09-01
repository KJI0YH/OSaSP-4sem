#!/bin/bash

source=$1
executable=$2

gcc $source -o $executable 2>&1  && ./$executable


