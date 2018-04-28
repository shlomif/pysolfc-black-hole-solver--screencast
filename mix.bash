#!/bin/bash
ofn=pysolfc-bhs-with-audio.ogv
rm -f "$ofn"
ffmpeg -i "006 - David Amber - Gnarly _feat. Devyn Rush_.ogg" -i pysolfc-bhs.ogv -map 1:v -map 0:a -shortest -c:a libvorbis -q:a 7 -c:v copy -af asetpts=PTS-STARTPTS "$ofn"
# ffmpeg -i audiodump.wav -i pysolfc-bhs.ogv -map 1:v -map 0:a -shortest -c:a libvorbis -q:a 7 -c:v copy -af asetpts=PTS-STARTPTS pysolfc-bhs-with-audio.ogv

