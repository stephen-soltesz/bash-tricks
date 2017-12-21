#!/bin/bash

set -x
set -o errtrace
set -o functrace
trap handleError ERR


function handleError() {
    local ret=$?
    echo "$0:$BASH_LINENO ERROR - $ret - $BASH_COMMAND"
    exit $ret
}


function callFalse() {
    false
}

function willFail() {
    echo "about to fail"
    callFalse
    echo "never runs"
    return 1
}


willFail "foobar"
