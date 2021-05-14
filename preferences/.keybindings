#!/usr/bin/env bash

###############################################################################
# Stop sound when using ctrl+cmd+<LEFT|RIGHT> for terminal resize
###############################################################################

[[ ! -d "$HOME/Library/KeyBindings" ]] && mkdir -p "$HOME/Library/KeyBindings"

if [[ ! -f "$HOME/Library/KeyBindings/DefaultKeyBinding.dict" ]] ; then
    cat > "$HOME/Library/KeyBindings/DefaultKeyBinding.dict" <<EOF
{
  "^@\UF701" = "noop";
  "^@\UF702" = "noop";
  "^@\UF703" = "noop";
}
EOF
fi
