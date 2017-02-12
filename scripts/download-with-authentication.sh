#!/bin/bash

user=$1
password=$2
youtube-dl -u $user -p $password -o './%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s' $3
