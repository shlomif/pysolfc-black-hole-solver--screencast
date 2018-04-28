#!/bin/bash
base="/home/shlomif/apps/multimedia/ffmpeg-2.8.x"
export PATH="$base/bin:$PATH"
ofn="pysolfc-bhs-with-audio.ogv"
rm -f "$ofn"
ffmpeg -i pysolfc-bhs.ogv -i "006 - David Amber - Gnarly _feat. Devyn Rush_.ogg"  -map 0:v -map 1:a  -c copy -shortest "$ofn"
