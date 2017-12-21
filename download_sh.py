#!/usr/bin/python

import sh
import sys

print sh.curl('-O', 'https://storage.googleapis.com/operator-mlab-sandbox/prometheus/legacy-targets/ndt_inotify.json', _tty_out=True)
print sh.grep(sh.cat('ndt_inotify.json'), 'lax02')
# print sh.cat('ndt_inotify.json')
