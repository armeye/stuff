#! /bin/sh
ftp -MV -o - `xclip -o` | grep url: | grep -oE 'http://[-A-Za-z0-9+&@#/%?=~_|!:,.;]*[-A-Za-z0-9+&@#/%=~_|]' | \
python2.7 -c 'import sys, urllib; sys.stdout.write(urllib.unquote(sys.stdin.read()))' | xargs youtube-dl

