#!/bin/bash

./scripts/youtube-dl --extract-audio --audio-format mp3 -o './list/%(title)s.%(ext)s' $1
