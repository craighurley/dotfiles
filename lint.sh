#!/usr/bin/env bash

set -eo pipefail
IFS=$'\n'

for f in $(find . -type f -not \( -iwholename '*.git*' -o -iwholename '*.tmp*' \) | sort -u) ; do
    if file "$f" | grep -i --quiet '\(bash\|shell\) script' ; then
        shellcheck "$f"
    elif file "$f" | grep -i --quiet 'text' ; then
        if [[ "$f" = *.yaml || "$f" = *.yml ]]; then
            yamllint "$f"
        fi
    fi
done
