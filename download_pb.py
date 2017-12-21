#!/usr/bin/python

from plumbum.cmd import grep, wc, cat, head, curl, false
from plumbum import FG

curl['-O', 'https://storage.googleapis.com/operator-mlab-sandbox/prometheus/legacy-targets/ndt_inotify.json'] & FG
print (cat['ndt_inotify.json'] | grep['lax02'])()
# print cat['ndt_inotify.json']()
