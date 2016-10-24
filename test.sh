#!/usr/bin/env bash

set -e
set -o pipefail

[[ -f "$(which mdl)" ]] && mdl=true || mdl=false
[[ -f "$(which shellcheck)" ]] && shellcheck=true || shellcheck=false

# lint all markdown files
if [[ "$mdl" = true ]] ; then

    # create a list of rules to ignore
    cat << EOF > ~/.mdlrc
rules "~MD013","~MD014","~MD033"
EOF

    # find and lint markdown files
    for f in $(find . -type f -name "*.md" -not -iwholename '*.git*' | sort -u) ; do
        if file "$f" | grep -i --quiet "text" ; then
            [[ "$mdl" = true ]] && mdl "$f"
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
