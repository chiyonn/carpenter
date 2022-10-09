#!/bin/sh

BASE_DIR=$(cd $(dirname $0); pwd)
source /etc/os-release

OS_DIR=$BASE_DIR/$ID
OS_SCRIPT=$OS_DIR/$ID.sh
source $OS_SCRIPT
