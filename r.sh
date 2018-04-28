#! /bin/sh
#
# r.sh
# Copyright (C) 2018 shlomif <shlomif@cpan.org>
#
# Distributed under terms of the MIT license.
#


(
    echo "Hi all! I am trying to overlay an audio track on a video"
    echo "using ffmpeg 4.0 but I am getting a zero-length file and no audio,"
    echo "using this command and its errors. How can I fix it?"
    echo
    eval "bash -x mix.bash" 2>&1
) > f.txt
sky up f.txt
