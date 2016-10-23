#!/usr/bin/env bash

set -e
set -o pipefail

(
if [[ -f "$(which shellcheck)" ]] ; then
    # find all executables and run `shellcheck`
    for f in $(find . -type f -not -iwholename '*.git*' | sort -u) ; do
        if file "$f" | grep --quiet shell ; then
            shellcheck "$f" && true
        fi
    done
fi
)
