#!/usr/bin/env bash

set -e
set -o pipefail

[[ -f "$(which mdl)" ]] && mdl=true || mdl=false
[[ -f "$(which proselint)" ]] && proselint=true || proselint=false
[[ -f "$(which shellcheck)" ]] && shellcheck=true || shellcheck=false

# lint all markdown files
if [[ "$mdl" = true || "$proselint" = true ]] ; then
    for f in $(find . -type f -name "*.md" -not -iwholename '*.git*' | sort -u) ; do
        if file "$f" | grep -i --quiet "text" ; then
            [[ "$mdl" = true ]] && mdl "$f"
            [[ "$proselint" = true ]] && proselint "$f"
        fi
    done
fi

# lint all shell scripts
if [[ "$shellcheck" = true ]] ; then
    for f in $(find . -type f -not -iwholename '*.git*' | sort -u) ; do
        file "$f"
        file "$f" | grep -i "shell" && true
        if file "$f" | grep -i --quiet "shell" ; then
            shellcheck "$f"
        fi
    done
fi

# I want shell linting to fail here
echo `basename $0` complete.
