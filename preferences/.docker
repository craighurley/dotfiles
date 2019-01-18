#!/usr/bin/env bash

###############################################################################
# docker
###############################################################################

[[ ! -d "$HOME/.docker" ]] && mkdir -p "$HOME/.docker"

if [[ ! -f "$HOME/.docker/config.json" ]] ; then
    cat << EOF > "$HOME/.docker/config.json"
{
  "stackOrchestrator" : "swarm",
  "detachKeys" : "ctrl-q,ctrl-q"
}
EOF
fi
