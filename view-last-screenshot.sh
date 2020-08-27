#!/bin/sh
# Copyright (c) 2019-2020 Sebastian LaVine <seblavine@outlook.com>
# Licensed under the MIT license. See smlss/LICENSE for details.
#
# File:        last-screenshot.sh
# Description: Opens the last screenshot taken in sxiv.
# Options:     
# Arguments:

# Directory containing the screenshots.
screenshot_path="$HOME/Documents/pictures/screenshots/"

sxiv "$screenshot_path/$(ls -t1 "$screenshot_path" | head -1)"
