#!/bin/bash
ofn=pysolfc-bhs-with-audio.mkv
rm -f "$ofn"
foo="-af asetpts=PTS-STARTPTS"
foo=""
aud="006 - David Amber - Gnarly _feat. Devyn Rush_.ogg"
aud="gnarly.wav"
ffmpeg -i "$aud" -i pysolfc-bhs.mkv -map 1:v -map 0:a -shortest -c:a libvorbis -q:a 7 -c:v copy $foo  "$ofn"
# ffmpeg -i audiodump.wav -i pysolfc-bhs.ogv -map 1:v -map 0:a -shortest -c:a libvorbis -q:a 7 -c:v copy -af asetpts=PTS-STARTPTS pysolfc-bhs-with-audio.ogv

