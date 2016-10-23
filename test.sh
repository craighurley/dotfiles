#!/usr/bin/env bash

set -ex
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
        if file "$f" | grep -i --quiet "\(bash\|shell\) script" ; then
            shellcheck "$f"
        fi
    done
fi
