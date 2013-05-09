#!/usr/bin/env bash

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

ISSET="we are already set"
echo ${NOTSET:-"use this instead"}
echo ${ISSET:-"use this instead"}
echo "The value '${NOTSET}' is still not set"

# NOTE: return values
echo $?
