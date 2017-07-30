#!/bin/bash

./scripts/youtube-dl -o './list/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s' ytuser:$1
