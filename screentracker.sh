#!/bin/bash

SCRIPT_DIR=$(dirname $0)
source "$SCRIPT_DIR/common.sh"

# usally it should be ":0" , but for me somehow it is :0
export DISPLAY=:1


screenshot

