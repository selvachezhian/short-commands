#!/usr/bin/env bash

fork() {
    echo "fork if you are interested to add"
    echo "https://github.com/selvachezhian/short-commands/fork"
}

notImplementedYet() {
    echo "The feature you looking for is not yet implemented for this OS"
    fork
}

osNotSupported() {
    echo "Unable to understand what OS it is"
    fork
}


command="$*"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    notImplementedYet
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    eval "${command}" | pbcopy
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    notImplementedYet
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    notImplementedYet
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    notImplementedYet
elif [[ "$OSTYPE" == "freebsd"* ]]; then
# ...
    notImplementedYet
else
    # Unknown.
    osNotSupported
fi
