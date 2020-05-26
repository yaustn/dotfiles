#!/bin/bash

source="/home/yaustn/src/"
destination="/media/usb/src"

rsync -azvh $source $destination
