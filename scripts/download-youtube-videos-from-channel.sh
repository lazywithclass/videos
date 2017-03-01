#!/bin/bash

./scripts/youtube-dl -o './%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s' ytuser:$1
