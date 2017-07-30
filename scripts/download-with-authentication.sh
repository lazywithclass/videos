#!/bin/bash

user=$1
password=$2
./scripts/youtube-dl -u $user -p $password -o './list/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s' $3
