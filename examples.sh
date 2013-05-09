#!/usr/bin/env bash

# NOTE: don't try to use bash as a language. 
#    A command interpreter first and a programming language second.

# NOTE: testing & errors
set -x
set -e
/usr/bin/false || /usr/bin/true

set +x
set +e

# NOTE: test vs [ vs [[

# NOTE: strings
hostname="mlab1.nuq01.measurement-lab.org"
echo $hostname
echo ${hostname%.measurement-lab.org}

filename="bash-3.2.48-release.tar.gz"
echo $filename
echo ${filename%.tar.gz}
echo ${filename/.tar.gz}
echo $filename

hostname="mlab1.SITE1.measurement-lab.org"
echo $hostname
echo ${hostname/SITE1/sea01}

# NOTE: environment

# BASH_SOURCE - defined when executing a script
#             - if script is found in your path, includes full path.
echo ${BASH_SOURCE[@]}
echo ${BASH_SOURCE##*/}

# NOTE: defaults

ISSET="This variable is already set"
echo ${NOTSET:-"This variable is not set; so this is returned"}
echo ${ISSET:-"This message will not be returned"}
echo "OMG. The value '${NOTSET}' is still not set"
echo ${NOTSET:="actually assign value"}
echo ${NOTSET}
unset NOTSET
echo ${NOTSET:?"Hi. Error: This value is not set!"}

# NOTE: return values
echo $?
